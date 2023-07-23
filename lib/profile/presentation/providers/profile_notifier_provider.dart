import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/domain/repositories/profile/profile_repository.dart';
import 'package:offertorio/profile/infrastructure/respositories/profile/profile_repository_impl.dart';
import 'package:offertorio/profile/infrastructure/services/profile/profile_services.dart';
import 'package:offertorio/profile/presentation/providers/state/profile_notifier.dart';
import 'package:offertorio/profile/presentation/providers/state/profile_state.dart';

final profileRepositoryProvider = Provider<ProfileRepository>(
  (ref) {
    return ProfileRepositoryImpl(
      profileDataSource: ProfileServices(
        firebaseFirestore: FirebaseFirestore.instance,
        firebaseStorage: FirebaseStorage.instance,
        imagePicker: ImagePicker(),
      ),
    );
  },
);

final profileNotifierProvider =
    StateNotifierProvider<ProfileNotifier, ProfileState>(
  (ref) =>
      ProfileNotifier(profileRepository: ref.watch(profileRepositoryProvider)),
);
