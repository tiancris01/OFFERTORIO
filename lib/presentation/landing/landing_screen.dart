import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offertorio/app/theme/colors.dart';

class LandingScreen extends StatelessWidget {
  static const String routeName = 'landing';
  final VoidCallback seeTerms;
  final VoidCallback onPressed;

  const LandingScreen({
    Key? key,
    required this.seeTerms,
    required this.onPressed,
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
                  'assets/logo/logo.svg',
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
                        // TODO: horizontal spacer when using text variables
                        text: ' Privacy Policy',
                        recognizer: TapGestureRecognizer()..onTap = seeTerms,
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
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(
                      'Agree and continue',
                      style: theme.textTheme.labelLarge,
                    ),
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
