import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/domain/repositories/profile/profile_repository.dart';
import 'package:offertorio/profile/presentation/providers/state/profile_state.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileNotifier({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository,
        super(ProfileState.initial());

  Future<void> pickImage({required ImageSource source}) async {
    state = const ProfileState.imageLoading();
    final result = await _profileRepository.pickImage(source);
    result.fold(
      (failure) => state = ProfileState.error(message: failure.message),
      (xfile) {
        if (xfile == null) {
          state = const ProfileState.error(
              message: "'You have not yet picked an image.'");
        } else {
          state = ProfileState.imageLoaded(xfile: xfile);
        }
      },
    );
  }
}
