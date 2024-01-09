import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 88.adaptSize,
            width: 88.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 1.v,
                  width: 2.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 33.h,
                    bottom: 15.v,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 88.adaptSize,
                    width: 88.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 17.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder44,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpGray100,
                      height: 54.adaptSize,
                      width: 54.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Interviewer",
                style: TextStyle(
                  color: appTheme.whiteA700,
                  fontSize: 14.fSize,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 3.v),
              SizedBox(
                width: 202.h,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adip\niscing elit, sed do eiusmod tempor.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: appTheme.blue50,
                    fontSize: 10.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 25.v,
                width: 67.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
