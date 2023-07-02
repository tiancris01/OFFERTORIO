import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/app_core/utils/assets_url/assets_url.dart';

class AppAvatar extends StatelessWidget {
  final double? size;
  final XFile? image;
  final bool? isLoading;

  const AppAvatar({
    Key? key,
    this.image,
    this.isLoading,
    this.size = 125.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: isLoading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : image != null
              ? ClipOval(
                  child: Image.file(
                    File(image!.path),
                    fit: BoxFit.cover,
                    width: size,
                    height: size,
                  ),
                )
              : SvgPicture.asset(
                  AssetsUrl.avatar_svg,
                  fit: BoxFit.cover,
                  width: size,
                  height: size,
                ),
    );
  }
}
