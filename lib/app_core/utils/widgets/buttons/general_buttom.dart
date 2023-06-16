import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const GeneralButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: theme.textTheme.labelLarge,
      ),
    );
  }
}
