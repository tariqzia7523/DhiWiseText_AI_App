import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 80.adaptSize,
                width: 80.adaptSize,
              ),
              SizedBox(height: 17.v),
              Text(
                "Chat AI: AI Chatbot",
                style: TextStyle(
                  color: appTheme.whiteA700,
                  fontSize: 20.fSize,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
