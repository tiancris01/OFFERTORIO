import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/domain/repositories/profile/profile_repository.dart';
import 'package:offertorio/profile/infrastructure/models/user_dto/user_dto.dart';
import 'package:offertorio/profile/presentation/providers/state/profile_state.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileNotifier({
    required ProfileRepository profileRepository,
  })  : _profileRepository = profileRepository,
        super(const ProfileState.initial());

  Future<void> pickImage({required ImageSource source}) async {
    state = const ProfileState.imageLoading();
    final result = await _profileRepository.pickImage(source);
    result.fold(
      (failure) => state = ProfileState.error(message: failure.message),
      (xfile) {
        if (xfile == null) {
          state = const ProfileState.error(
              message: 'You have not yet picked an image.');
        } else {
          state = ProfileState.imageLoaded(xfile: xfile);
        }
      },
    );
  }

  Future<void> uploadImage({
    required String uid,
    required String phoneNumber,
    required String name,
  }) async {
    final result = await _profileRepository.uploadFileToFS(
      uid,
      state.maybeWhen(
        imageLoaded: (xfile) => xfile,
        orElse: () => null,
      ),
    );
    result.fold(
      (failure) => state = ProfileState.error(message: failure.message),
      (urlImage) => createProfile(
        name: name,
        uid: uid,
        phoneNumber: phoneNumber,
        profileImage: urlImage!,
      ),
    );
  }

  Future<void> createProfile({
    required String name,
    required String uid,
    required String phoneNumber,
    required String profileImage,
  }) async {
    final UserDTO user = UserDTO(
      name: name,
      uid: uid,
      profileImage: profileImage,
      phoneNumber: phoneNumber,
      isOnline: true,
    );
    final result = await _profileRepository.createProfileFRDB(user);
    result.fold(
      (failure) => state = ProfileState.error(message: failure.message),
      (_) => state = const ProfileState.profileCreated(),
    );
  }

  Future<bool> dataBaseUserExist(String uid) async {
    final result = await _profileRepository.dataBaseUserExist(uid);
    return result.fold(
      (failure) {
        state = ProfileState.error(message: failure.message);
        return false;
      },
      (isExist) => isExist,
    );
  }
}
