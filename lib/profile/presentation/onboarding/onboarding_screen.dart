import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offertorio/app_core/theme/colors.dart';
import 'package:offertorio/app_core/utils/assets_url/assets_url.dart';
import 'package:offertorio/app_core/utils/widgets/buttons/general_buttom.dart';
import 'package:offertorio/app_core/utils/widgets/miscellenius/custom_space.dart';
import 'package:offertorio/app_core/utils/widgets/reactive_textfield/custom_reactivetextfield.dart';
import 'package:offertorio/profile/providers/profile_providers.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProfileOnBoardingScreen extends ConsumerWidget {
  static const String routeName = 'profile_on_boarding';
  const ProfileOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(profileFormStateProvider);
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
                    SvgPicture.asset(
                      AssetsUrl.avatar_svg,
                      height: 100,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 102,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: AppColors.withe,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {},
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            size: 32,
                            color: AppColors.tertiary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomSpace.vertical(60),
              const CustomRXTextFields(
                formControlName: 'name',
                hintTxt: 'Name',
              ),
              const Spacer(),
              ReactiveFormConsumer(
                builder: (context, form, child) {
                  return GeneralButton(
                    title: 'Continuar',
                    onPressed: form.valid ? () {} : null,
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
