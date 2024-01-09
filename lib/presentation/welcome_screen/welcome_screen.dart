import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 39.v,
          ),
          child: Column(
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgGroup5,
                height: 293.v,
                width: 314.h,
              ),
              SizedBox(height: 54.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome to AI Chatbot",
                  style: TextStyle(
                    color: appTheme.whiteA700,
                    fontSize: 22.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 333.h,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisci elit,\nsed do eiusmod tempor incididunt ut labore et dolore\nmagna aliqua",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: appTheme.whiteA700,
                    fontSize: 14.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "Sign In",
                buttonStyle: CustomButtonStyles.fillPrimary,
              ),
              SizedBox(height: 58.v),
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
    );
  }
}
