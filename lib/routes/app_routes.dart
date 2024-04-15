import 'package:flutter/material.dart';
import 'package:qube_bidding/presentation/avatar_screen/avatar_screen.dart';
import 'package:qube_bidding/presentation/homescreen_page/homescreen_page.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/homescreen_container_screen/homescreen_container_screen.dart';
import '../presentation/social_bidding_screen/social_bidding_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String splashScreenOneScreen = '/avatar_screen';

  static const String homescreenContainerScreen = '/homescreen_container_screen';

  static const String homescreenPage = '/homescreen_page';

  static const String socialBiddingScreen = '/social_bidding_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        splashScreenOneScreen: AvatarScreen.builder,
        homescreenContainerScreen: HomescreenContainerScreen.builder,
        socialBiddingScreen: SocialBiddingScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder,
        homescreenPage: HomescreenPage.builder
      };
}
