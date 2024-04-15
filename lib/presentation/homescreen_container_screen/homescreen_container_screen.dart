import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../homescreen_page/homescreen_page.dart';
import 'bloc/homescreen_container_bloc.dart';
import 'models/homescreen_container_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomescreenContainerScreen extends StatelessWidget {
  HomescreenContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomescreenContainerBloc>(
      create: (context) => HomescreenContainerBloc(HomescreenContainerState(
        homescreenContainerModelObj: HomescreenContainerModel(),
      ))
        ..add(HomescreenContainerInitialEvent()),
      child: HomescreenContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomescreenContainerBloc, HomescreenContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Navigator(
              key: navigatorKey,
              initialRoute: AppRoutes.homescreenPage,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) =>
                    getCurrentPage(context, routeSetting.name!),
                transitionDuration: Duration(seconds: 0),
              ),
            ),
            bottomNavigationBar: _buildBottombar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homescreenPage;
      case BottomBarEnum.Wallet:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homescreenPage:
        return HomescreenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
