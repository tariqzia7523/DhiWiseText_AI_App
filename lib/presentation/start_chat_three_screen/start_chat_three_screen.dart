import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_text_form_field.dart';

class StartChatThreeScreen extends StatelessWidget {
  StartChatThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildThirty(context),
              SizedBox(height: 10.v),
              _buildTwentyEight(context),
              SizedBox(height: 10.v),
              _buildTwentySeven(context),
              SizedBox(height: 10.v),
              _buildTwentyFive(context),
              SizedBox(height: 10.v),
              _buildTwentyThree(context),
              SizedBox(height: 10.v),
              _buildThirteen(context),
              SizedBox(height: 10.v),
              _buildEighteen(context),
              SizedBox(height: 10.v),
              _buildMessage(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 19.v,
          bottom: 21.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Developer",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(22.h, 16.v, 22.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        "What programming languages should I learn?",
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 13.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        width: 259.h,
        margin: EdgeInsets.only(right: 22.h),
        child: Text(
          "What is Agile development and how does it\nwork?",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 13.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        width: 269.h,
        margin: EdgeInsets.only(right: 12.h),
        child: Text(
          "What are the best resources for learning soft-\nware development?",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 13.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        width: 261.h,
        margin: EdgeInsets.only(right: 19.h),
        child: Text(
          "What are the most in-demand programming\nskills?",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 13.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        width: 261.h,
        margin: EdgeInsets.only(right: 19.h),
        child: Text(
          "What are the most in-demand programming\nskills?",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 13.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        "How do I get started as a developer?",
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 13.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Container(
      width: 331.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        width: 247.h,
        margin: EdgeInsets.only(right: 34.h),
        child: Text(
          "What is DevOps and how does it relate to\ndevelopment?",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 13.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return SizedBox(
      height: 189.v,
      width: 370.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Text(
                "How do I improve my coding skills?",
                style: TextStyle(
                  color: appTheme.whiteA700,
                  fontSize: 13.fSize,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Container(
                width: 272.h,
                margin: EdgeInsets.only(right: 9.h),
                child: Text(
                  "How do I stay up-to-date with the latest tech-\nnology trends?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: appTheme.whiteA700,
                    fontSize: 13.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 113.v),
                  CustomTextFormField(
                    controller: messageController,
                    hintText: "Write your message here..",
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 27.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSave,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 50.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 21.h,
                      top: 16.v,
                      bottom: 16.v,
                    ),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillPrimaryContainer,
                    fillColor: theme.colorScheme.primaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
