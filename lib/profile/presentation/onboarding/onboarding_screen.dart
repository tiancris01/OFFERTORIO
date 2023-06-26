import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/app_core/utils/widgets/buttons/general_buttom.dart';
import 'package:offertorio/app_core/utils/widgets/miscellenius/custom_space.dart';

class ProfileOnBoardingScreen extends ConsumerWidget {
  static const String routeName = 'profile_on_boarding';
  const ProfileOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
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
            const CircleAvatar(
              
            ),
            const Spacer(),
            GeneralButton(
              title: 'Continuar',
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
