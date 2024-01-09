import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/presentation/home_screen_one_page/home_screen_one_page.dart';
import 'package:tariq_s_application1/presentation/topics_screen_page/topics_screen_page.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_floating_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
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
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40.v),
              Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 74.adaptSize,
                    width: 74.adaptSize,
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    width: 140.h,
                    child: Text(
                      "Hello Rameen!\nWhat’s on your mind?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 14.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 34.v,
                      ),
                      decoration: AppDecoration.outlineWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder37,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildHistory(context),
                          Spacer(
                            flex: 33,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgReply,
                            height: 44.v,
                            width: 43.h,
                          ),
                          SizedBox(height: 12.v),
                          Text(
                            "No History Found!",
                            style: TextStyle(
                              color: appTheme.blueGray700,
                              fontSize: 13.fSize,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 66,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Chat AI: AI Chatbot",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettingsOnprimarycontainer,
          margin: EdgeInsets.fromLTRB(22.h, 19.v, 22.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "History",
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 16.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "See All",
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 12.fSize,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
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

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: theme.colorScheme.secondaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgMegaphone,
        height: 24.0.v,
        width: 24.0.h,
      ),
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
