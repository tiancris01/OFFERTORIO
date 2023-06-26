import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:offertorio/app_core/theme/colors.dart';
import 'package:offertorio/app_core/utils/assets_url/assets_url.dart';
import 'package:offertorio/app_core/utils/widgets/buttons/general_buttom.dart';

class SignInLandingScreen extends StatelessWidget {
  static const String routeName = 'landing';

  const SignInLandingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 50.0,
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Welcome to Offertorio',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  'You have the money, the desicion is yours.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelMedium,
                ),
                SvgPicture.asset(
                  AssetsUrl.logo_vg,
                  color: AppColors.primary,
                  height: 200,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Read our',
                    style: theme.textTheme.labelMedium!.copyWith(
                      fontSize: 16.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        // TODO: horizontal spacer when using text variables.. crear un espacio basico para manejar el espacio entre palabras
                        text: ' Privacy Policy',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: theme.textTheme.labelMedium!.copyWith(
                          color: AppColors.link,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      // TODO: horizontal spacer when using text variables
                      const TextSpan(
                        text:
                            ' Tap "Agree and continue" to accept the Terms of Service.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.95,
                  child: GeneralButton(
                    onPressed: () {
                      context.go('/sign_in_phone');
                    },
                    title: 'Agree and continue',
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
