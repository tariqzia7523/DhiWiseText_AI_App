import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/presentation/home_screen_one_page/home_screen_one_page.dart';
import 'package:tariq_s_application1/presentation/topics_screen_page/topics_screen_page.dart';
import 'package:tariq_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneContainerScreen extends StatelessWidget {
  HomeScreenOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScreenOnePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildNavTopics(context),
            floatingActionButton: CustomFloatingButton(
                height: 54,
                width: 54,
                child: CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 27.0.v,
                    width: 27.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildNavTopics(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
