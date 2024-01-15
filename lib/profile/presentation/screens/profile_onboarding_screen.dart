// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/post/presentation/post_screens.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:offertorio/app_core/utils/snackbar/show_snackbar.dart';
import 'package:offertorio/app_core/utils/widgets/shared_widgets.dart';
import 'package:offertorio/auth/providers/auth_providers.dart';
import 'package:offertorio/profile/application/profile_providers.dart';
import 'package:offertorio/profile/presentation/providers/profile_notifier_provider.dart';
import 'package:offertorio/profile/presentation/providers/state/profile_state.dart';

import '../widgets/camera_button.dart';

class ProfileOnBoardingScreen extends ConsumerWidget {
  static const String routeName = 'profile_on_boarding';
  const ProfileOnBoardingScreen({Key? key}) : super(key: key);

  Future<void> _openVerification(BuildContext context) async {
    await context.pushNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ProfileState>(profileNotifierProvider, (previous, next) {
      if (next is ProfileCreated) {
        _openVerification(context);
      }
    });

    final form = ref.watch(profileFormStateProvider);
    final user =
        ref.read(authFirebaseNotifierProvider.notifier).getCurrentUserUid();
    final state = ref.watch(profileNotifierProvider);

    return ProfileOnBoardingScreenBuilder(
      form: form,
      user: user,
      canSubmit: state.maybeWhen(
        imageUploaded: (_) => true,
        orElse: () => false,
      ),
    );
  }
}

class ProfileOnBoardingScreenBuilder extends ConsumerStatefulWidget {
  final FormGroup form;
  final User? user;
  final bool? canSubmit;

  const ProfileOnBoardingScreenBuilder({
    Key? key,
    required this.form,
    required this.user,
    this.canSubmit = false,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileOnBoardingScreenBuilderState();
}

class _ProfileOnBoardingScreenBuilderState
    extends ConsumerState<ProfileOnBoardingScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    final imageState2 = ref.watch(profileNotifierProvider);
    ref.listen<ProfileState>(profileNotifierProvider, (previous, next) {
      if (next is Error) {
        showSnackbar(context, next.message ?? '');
      }
    });
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: ReactiveForm(
            formGroup: widget.form,
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
                              .read(profileNotifierProvider.notifier)
                              .pickImage(source: ImageSource.gallery);
                        },
                        child: imageState2.maybeWhen(
                          initial: () => const AppAvatar(),
                          imageLoading: () => const AppAvatar(isLoading: true),
                          imageLoaded: (xfile) {
                            return AppAvatar(xfile: xfile);
                          },
                          error: (message) => const AppAvatar(),
                          orElse: () {
                            return null;
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 102,
                        child: CameraButton(
                          onPressed: () {
                            ref
                                .read(profileNotifierProvider.notifier)
                                .pickImage(source: ImageSource.camera);
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
                              ref
                                  .read(profileNotifierProvider.notifier)
                                  .uploadImage(
                                    uid: widget.user!.uid,
                                    name: form.control('name').value,
                                    phoneNumber: widget.user!.phoneNumber!,
                                  );
                            }
                          : null,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
