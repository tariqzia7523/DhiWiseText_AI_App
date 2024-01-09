import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_icon_button.dart';
import 'package:tariq_s_application1/widgets/custom_text_form_field.dart';

class StartChatOneScreen extends StatelessWidget {
  StartChatOneScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 45.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 66.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 17.h,
                            vertical: 9.v,
                          ),
                          decoration:
                              AppDecoration.outlineErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 1.v),
                              Container(
                                width: 183.h,
                                margin: EdgeInsets.only(right: 3.h),
                                child: Text(
                                  "What programming languages\nshould I learn?",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: appTheme.whiteA700,
                                    fontSize: 13.fSize,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          bottom: 27.v,
                        ),
                        child: CustomIconButton(
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLockGray10001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildSettingsRow(context),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 59.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 10.v,
                        ),
                        decoration:
                            AppDecoration.outlineErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL10,
                        ),
                        child: SizedBox(
                          width: 169.h,
                          child: Text(
                            "How do I improve my coding\nskills?",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: appTheme.whiteA700,
                              fontSize: 13.fSize,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          bottom: 27.v,
                        ),
                        child: CustomIconButton(
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLockGray10001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildSettingsRow1(context),
              SizedBox(height: 6.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessage(context),
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
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Chat AI: AI Chatbot",
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 112.h),
              child: Row(
                children: [
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 5.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  AppbarTitle(
                    text: "Online",
                    margin: EdgeInsets.only(left: 6.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(22.h, 17.v, 22.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(bottom: 173.v),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.outlineErrorContainer1.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL20,
            ),
            child: Container(
              width: 247.h,
              margin: EdgeInsets.only(left: 1.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "According to Stack Overflow Developer\nSurvey 2021, JavaScript is the most\ncommonly used language, followed by HTML\n/CSS, SQL, Python, and Java [",
                      style: CustomTextStyles.bodySmallfff5f5f5.copyWith(
                        height: 1.33,
                      ),
                    ),
                    TextSpan(
                      text: "3",
                      style: CustomTextStyles.bodySmallfff5f5f5.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                          "]. JavaScript is\nthe most sought programming language by \nhiring professionals. JavaScript is used to\nmanage the behavior of web pages and can \nbe used to generate animated graphics, inter",
                      style: CustomTextStyles.bodySmallfff5f5f5.copyWith(
                        height: 1.33,
                      ),
                    ),
                    TextSpan(
                      text: "-\n",
                      style: CustomTextStyles.bodySmallfff5f5f5,
                    ),
                    TextSpan(
                      text: "active images, buttons, and other functionalit",
                      style: CustomTextStyles.bodySmallfff5f5f5,
                    ),
                    TextSpan(
                      text: "-\n",
                      style: CustomTextStyles.bodySmallfff5f5f5,
                    ),
                    TextSpan(
                      text:
                          "ies. Its flexibility allows for endless possibilit",
                      style: CustomTextStyles.bodySmallfff5f5f5,
                    ),
                    TextSpan(
                      text: "-\n",
                      style: CustomTextStyles.bodySmallfff5f5f5,
                    ),
                    TextSpan(
                      text: "ies, which is why it’s so popular.",
                      style: CustomTextStyles.bodySmallfff5f5f5,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(bottom: 109.v),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 12.h),
            color: appTheme.gray90002,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.customBorderBL20,
            ),
            child: Container(
              height: 140.v,
              width: 273.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineErrorContainer1.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 248.h,
                      child: Text(
                        "You can take an active role in improving the\nclarity of the process by presenting your \nrequirements documentation or your imple-\nmentation plan well before beginning to code.\nThis will help to ensure that what you are\nplanning to create is actually what's been\nasked fo",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.gray10001,
                          fontSize: 12.fSize,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.h),
                      child: SizedBox(
                        height: 15.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 13.v,
      ),
      child: CustomTextFormField(
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
        borderDecoration: TextFormFieldStyleHelper.fillPrimaryContainer,
        fillColor: theme.colorScheme.primaryContainer,
      ),
    );
  }
}
