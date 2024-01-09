import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/custom_elevated_button.dart';
import 'package:tariq_s_application1/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController lockController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 39.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 38.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2,
                      height: 104.adaptSize,
                      width: 104.adaptSize,
                    ),
                    SizedBox(height: 34.v),
                    SizedBox(
                      width: 179.h,
                      child: Text(
                        "Hello Again!\nYou’ve been missed",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appTheme.whiteA700,
                          fontSize: 20.fSize,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 51.v),
                    _buildLock(context),
                    SizedBox(height: 17.v),
                    _buildPassword(context),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 10.fSize,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 49.v),
                    _buildSignIn(context),
                    SizedBox(height: 42.v),
                    _buildLineOne(context),
                    SizedBox(height: 42.v),
                    _buildLoginWithGoogle1(context),
                    SizedBox(height: 56.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodySmallffffffff,
                          ),
                          TextSpan(
                            text: "Sign up",
                            style: CustomTextStyles.labelLargeff19b890.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLock(BuildContext context) {
    return CustomTextFormField(
      controller: lockController,
      hintText: "rameenzafar10",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 15.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 16.v,
          width: 12.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Enter Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(14.h, 15.v, 11.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 16.v,
          width: 13.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 14.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettingsWhiteA700,
          height: 14.v,
          width: 15.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 14.v),
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign In",
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }

  /// Section Widget
  Widget _buildLineOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 8.v,
          ),
          child: SizedBox(
            width: 146.h,
            child: Divider(),
          ),
        ),
        Text(
          "OR",
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 12.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 8.v,
          ),
          child: SizedBox(
            width: 146.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogle(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Login with Google",
        margin: EdgeInsets.only(right: 4.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 13.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogle,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineErrorContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginWithFacebook(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Login with Facebook",
        margin: EdgeInsets.only(left: 4.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 13.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFacebook,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineErrorContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogle1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLoginWithGoogle(context),
        _buildLoginWithFacebook(context),
      ],
    );
  }
}
