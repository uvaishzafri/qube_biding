import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../../core/app_export.dart';
import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';

class SplashScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 4)),
        builder: (_, builder) {
          if (builder.connectionState == ConnectionState.done) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              Navigator.pushNamed(context, '/avatar_screen');
            });
          } else {
            return BlocBuilder<SplashBloc, SplashState>(
              builder: (context, state) {
                return SafeArea(
                  child: Scaffold(
                    body: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 213, height: 153, child: Image.asset("assets/images/logo.png")),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_qube_bidding".tr,
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(height: 5.v)
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return Container();
        });
  }
}
