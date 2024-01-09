import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ChatlistcomponentItemWidget extends StatelessWidget {
  const ChatlistcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "2 Apr 2023 | 10:26 PM",
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 12.fSize,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 14.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    right: 6.h,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            height: 115.v,
            width: 331.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 13.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 21.v,
                          width: 22.h,
                          margin: EdgeInsets.only(bottom: 39.v),
                        ),
                        Expanded(
                          child: Container(
                            width: 272.h,
                            margin: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labret dolore mag\nna aliqua. Ut enim ad minim veniam, quis nostrud exerc\nitation ullamco laboris nisi ut aliquip ex ea commodo",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: appTheme.whiteA700,
                                fontSize: 11.fSize,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 118.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.gradientGrayToGray.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL201,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 52.v),
                        CustomElevatedButton(
                          height: 32.v,
                          text: "See Full Chat",
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUserTeal90002,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "Is cheese balls good for health?",
                            style: TextStyle(
                              color: appTheme.whiteA700,
                              fontSize: 12.fSize,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
