import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RateUsScreenDialog extends StatelessWidget {
  const RateUsScreenDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262.h,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup6312,
            height: 102.v,
            width: 111.h,
          ),
          SizedBox(height: 25.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35.h),
              child: Text(
                "Do You Like Our App?",
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 14.fSize,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 194.h,
            child: Text(
              "Recommend us to others by rating us on\nPlay Store",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.whiteA700,
                fontSize: 11.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          CustomElevatedButton(
            height: 34.v,
            width: 218.h,
            text: "Rate Us",
            buttonStyle: CustomButtonStyles.fillPrimary,
          ),
        ],
      ),
    );
  }
}
