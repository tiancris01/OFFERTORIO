import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/app_core/utils/widgets/shared_widgets.dart';
import 'package:offertorio/auth/providers/auth_providers.dart';
import 'package:offertorio/profile/providers/profile/firebase_storage_notifier_provider/firebase_storage_notifier_provider.dart';
import 'package:offertorio/profile/providers/profile_providers.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'widgets/camera_button.dart';

class ProfileOnBoardingScreen extends ConsumerWidget {
  static const String routeName = 'profile_on_boarding';
  const ProfileOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(authFirebaseProvider);
    final form = ref.watch(profileFormStateProvider);
    final imageState = ref.watch(imagePickerNotifierProvider);
    XFile xfileImage = XFile('');
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Profile Info",
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
              CustomSpace.vertical(30),
              Text(
                "Please provide your name and an optional profile photo",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
              CustomSpace.vertical(30),
              SizedBox(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        ref
                            .read(imagePickerNotifierProvider.notifier)
                            .pickImageFromGallery(context);
                      },
                      child: imageState.when(
                          initial: () => const AppAvatar(),
                          loading: () => const AppAvatar(isLoading: true),
                          data: (image) {
                            xfileImage = image;
                            return AppAvatar(image: image);
                          },
                          error: (message) => const AppAvatar()),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 102,
                      child: CameraButton(
                        onPressed: () {
                          ref
                              .read(imagePickerNotifierProvider.notifier)
                              .pickImageFromCamera(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              CustomSpace.vertical(60),
              const CustomRXTextFields(
                hintTxt: 'Name',
                formControlName: 'name',
              ),
              const Spacer(),
              ReactiveFormConsumer(
                builder: (context, form, child) {
                  return GeneralButton(
                    title: 'Continuar',
                    onPressed: form.valid
                        ? () {
                            final String uid = userInfo.getCurrentUserUid();
                            ref
                                .read(firebaseStorageNotifierProvider.notifier)
                                .uploadToFirebaseStorage(
                                  path: "user/profilePic/$uid",
                                  file: File(xfileImage.path),
                                );
                          }
                        : null,
                  );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
