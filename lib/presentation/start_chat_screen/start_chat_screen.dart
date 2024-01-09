import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_icon_button.dart';
import 'package:tariq_s_application1/widgets/custom_text_form_field.dart';

class StartChatScreen extends StatelessWidget {
  StartChatScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageColumnController = TextEditingController();

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
                  padding: EdgeInsets.only(left: 59.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 8.v,
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
                              Text(
                                "Is cheese balls good for health?",
                                style: TextStyle(
                                  color: appTheme.whiteA700,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          bottom: 8.v,
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
              Padding(
                padding: EdgeInsets.only(right: 14.h),
                child: _buildSettingsRow(
                  context,
                  descriptionText:
                      "No, this recipe is not good for diabetics,\nheart and weight loss. This recipe uses\nplain  flour or maida to make Cheese Corn\nBalls which is refined carb not suitable for\nhealthy lifestyle.",
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL10,
                      ),
                      child: Text(
                        "Is cheese balls halal?",
                        style: TextStyle(
                          color: appTheme.whiteA700,
                          fontSize: 14.fSize,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        bottom: 8.v,
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
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(right: 14.h),
                child: _buildSettingsRow(
                  context,
                  descriptionText:
                      "It is also important to consider how the\ncheese puffs are prepared. If they are fried\nin pork fat, then they would not be consi-\nered halal. However, if they are fried in \nvegetable oil, then they would be halal.",
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 71.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 9.v,
                        ),
                        decoration:
                            AppDecoration.outlineErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL10,
                        ),
                        child: Text(
                          "What is ball cheese made of?",
                          style: TextStyle(
                            color: appTheme.whiteA700,
                            fontSize: 14.fSize,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          bottom: 8.v,
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
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 31.adaptSize,
                    width: 31.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Container(
                    height: 36.v,
                    width: 70.h,
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.outlineErrorContainer1.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL20,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserWhiteA700,
                      height: 8.v,
                      width: 21.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessageColumn(context),
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
  Widget _buildMessageColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 13.v,
      ),
      child: CustomTextFormField(
        controller: messageColumnController,
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
        borderDecoration: TextFormFieldStyleHelper.fillWhiteATL25,
        fillColor: appTheme.whiteA700.withOpacity(0.06),
      ),
    );
  }

  /// Common widget
  Widget _buildSettingsRow(
    BuildContext context, {
    required String descriptionText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 31.adaptSize,
          width: 31.adaptSize,
          margin: EdgeInsets.only(bottom: 77.v),
        ),
        Container(
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineErrorContainer1.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL20,
          ),
          child: Container(
            width: 246.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Text(
              descriptionText,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: appTheme.gray10001,
                fontSize: 13.fSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
