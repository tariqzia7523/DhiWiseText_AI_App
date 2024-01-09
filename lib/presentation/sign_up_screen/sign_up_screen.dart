import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/custom_checkbox_button.dart';
import 'package:tariq_s_application1/widgets/custom_elevated_button.dart';
import 'package:tariq_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController createAccountImageController = TextEditingController();

  TextEditingController createAccountUsernameController =
      TextEditingController();

  TextEditingController createAccountEmailController = TextEditingController();

  TextEditingController createAccountPasswordController =
      TextEditingController();

  bool createAccountAgreement = false;

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
                      width: 182.h,
                      child: Text(
                        "Create your account\nto continue",
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
                    _buildCreateAccountImage(context),
                    SizedBox(height: 17.v),
                    _buildCreateAccountUsername(context),
                    SizedBox(height: 17.v),
                    _buildCreateAccountEmail(context),
                    SizedBox(height: 17.v),
                    _buildCreateAccountPassword(context),
                    SizedBox(height: 12.v),
                    _buildCreateAccountAgreement(context),
                    SizedBox(height: 48.v),
                    _buildCreateAccountButton(context),
                    SizedBox(height: 63.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: CustomTextStyles.bodySmallffffffff,
                          ),
                          TextSpan(
                            text: "Sign in",
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
  Widget _buildCreateAccountImage(BuildContext context) {
    return CustomTextFormField(
      controller: createAccountImageController,
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
  Widget _buildCreateAccountUsername(BuildContext context) {
    return CustomTextFormField(
      controller: createAccountUsernameController,
      hintText: "Enter Email",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(13.h, 16.v, 10.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLockWhiteA700,
          height: 14.v,
          width: 15.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountEmail(BuildContext context) {
    return CustomTextFormField(
      controller: createAccountEmailController,
      hintText: "Enter Password",
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
  Widget _buildCreateAccountPassword(BuildContext context) {
    return CustomTextFormField(
      controller: createAccountPasswordController,
      hintText: "Confirm Password",
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
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildCreateAccountAgreement(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: CustomCheckboxButton(
        text:
            "By signing up, you’re agree to our Terms & Conditions and Privacy\nPolicy",
        isExpandedText: true,
        value: createAccountAgreement,
        textStyle: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        onChange: (value) {
          createAccountAgreement = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Create Account",
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
