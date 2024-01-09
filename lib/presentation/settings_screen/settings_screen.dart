import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/presentation/home_screen_one_page/home_screen_one_page.dart';
import 'package:tariq_s_application1/presentation/topics_screen_page/topics_screen_page.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_floating_button.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 39.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Settings",
                          style: TextStyle(
                            color: appTheme.whiteA700,
                            fontSize: 15.fSize,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildGeneralSettings(context),
                        SizedBox(height: 30.v),
                        Text(
                          "Support",
                          style: TextStyle(
                            color: appTheme.whiteA700,
                            fontSize: 15.fSize,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildSupport(context),
                        SizedBox(height: 126.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 152.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorGray90001,
                                height: 1.v,
                                width: 2.h,
                                margin: EdgeInsets.only(
                                  top: 10.v,
                                  bottom: 13.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 1.v,
                                width: 2.h,
                                margin: EdgeInsets.only(
                                  left: 11.h,
                                  top: 10.v,
                                  bottom: 13.v,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 25.v,
                                width: 67.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 54,
          child: CustomImageView(
            imagePath: ImageConstant.imgHomeWhiteA700,
            height: 27.0.v,
            width: 27.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Settings",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettingsOnprimarycontainer,
          margin: EdgeInsets.fromLTRB(22.h, 16.v, 22.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGeneralSettings(BuildContext context) {
    return Container(
      width: 331.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(bottom: 15.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  children: [
                    Text(
                      "Color Theme",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Select Your Color",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(bottom: 16.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "App Language",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Select Your Language",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 17.v,
                width: 18.h,
                margin: EdgeInsets.only(bottom: 16.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rate Us",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Rate Your Experience",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(bottom: 15.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Feedback",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Send us Your Feedback",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSupport(BuildContext context) {
    return Container(
      width: 331.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCart,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(bottom: 15.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Restore Purchases",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Select Your Color",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserPrimary21x18,
                height: 21.v,
                width: 18.h,
                margin: EdgeInsets.only(bottom: 15.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Read Our Privacy Policy",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUpPrimary18x18,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(bottom: 15.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terms of Use",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserPrimary20x18,
                height: 20.v,
                width: 18.h,
                margin: EdgeInsets.only(bottom: 9.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Version",
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 13.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "1.0",
                      style: TextStyle(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        fontSize: 10.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Topics:
        return AppRoutes.homeScreenOnePage;
      case BottomBarEnum.Settings:
        return AppRoutes.topicsScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenOnePage:
        return HomeScreenOnePage();
      case AppRoutes.topicsScreenPage:
        return TopicsScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
