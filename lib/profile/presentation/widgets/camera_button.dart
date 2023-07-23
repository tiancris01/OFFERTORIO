import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CameraButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onPressed,
        child: Icon(
          Icons.camera_alt_outlined,
          size: 25,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
