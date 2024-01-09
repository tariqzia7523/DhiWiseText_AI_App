import 'package:flutter/material.dart';
import 'package:tariq_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:tariq_s_application1/presentation/welcome_screen/welcome_screen.dart';
import 'package:tariq_s_application1/presentation/login_screen/login_screen.dart';
import 'package:tariq_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:tariq_s_application1/presentation/home_screen/home_screen.dart';
import 'package:tariq_s_application1/presentation/start_chat_screen/start_chat_screen.dart';
import 'package:tariq_s_application1/presentation/home_screen_one_container_screen/home_screen_one_container_screen.dart';
import 'package:tariq_s_application1/presentation/see_all_two_screen/see_all_two_screen.dart';
import 'package:tariq_s_application1/presentation/see_all_one_screen/see_all_one_screen.dart';
import 'package:tariq_s_application1/presentation/start_chat_three_screen/start_chat_three_screen.dart';
import 'package:tariq_s_application1/presentation/start_chat_two_screen/start_chat_two_screen.dart';
import 'package:tariq_s_application1/presentation/start_chat_one_screen/start_chat_one_screen.dart';
import 'package:tariq_s_application1/presentation/settings_screen/settings_screen.dart';
import 'package:tariq_s_application1/presentation/premium_screen/premium_screen.dart';
import 'package:tariq_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';

  static const String startChatScreen = '/start_chat_screen';

  static const String homeScreenOnePage = '/home_screen_one_page';

  static const String homeScreenOneContainerScreen =
      '/home_screen_one_container_screen';

  static const String seeAllTwoScreen = '/see_all_two_screen';

  static const String seeAllOneScreen = '/see_all_one_screen';

  static const String topicsScreenPage = '/topics_screen_page';

  static const String startChatThreeScreen = '/start_chat_three_screen';

  static const String startChatTwoScreen = '/start_chat_two_screen';

  static const String startChatOneScreen = '/start_chat_one_screen';

  static const String settingsScreen = '/settings_screen';

  static const String premiumScreen = '/premium_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    startChatScreen: (context) => StartChatScreen(),
    homeScreenOneContainerScreen: (context) => HomeScreenOneContainerScreen(),
    seeAllTwoScreen: (context) => SeeAllTwoScreen(),
    seeAllOneScreen: (context) => SeeAllOneScreen(),
    startChatThreeScreen: (context) => StartChatThreeScreen(),
    startChatTwoScreen: (context) => StartChatTwoScreen(),
    startChatOneScreen: (context) => StartChatOneScreen(),
    settingsScreen: (context) => SettingsScreen(),
    premiumScreen: (context) => PremiumScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
