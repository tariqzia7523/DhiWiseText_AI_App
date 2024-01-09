import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class PremiumscreenItemWidget extends StatelessWidget {
  const PremiumscreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle469,
        height: 269.v,
        width: 189.h,
      ),
    );
  }
}
