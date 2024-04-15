import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:fluttermoji/fluttermojiCustomizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class AvatarScreen extends StatelessWidget {
  AvatarScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController userNameController = TextEditingController();

  static Widget builder(BuildContext context) {
    return AvatarScreen();
  }

  @override
  Widget build(BuildContext context) {
    SharedPreferences prefs;
    userNameController.text  = "lbl_username".tr;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          //width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FluttermojiCircleAvatar(),
                      CustomElevatedButton(
                        height: 32.v,
                        width: 62.h,
                        text: "lbl_save".tr,
                        margin: EdgeInsets.only(left: 56.h, bottom: 103.v),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles.gradientPrimaryToPrimaryContainerDecoration,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onPressed: () async => {
                          prefs = await SharedPreferences.getInstance(),
                          await prefs.setString('userName', userNameController.text),
                          SchedulerBinding.instance.addPostFrameCallback((_) {
                            Navigator.pushNamed(context, '/homescreen_container_screen');
                          })
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              _buildRowlabel(context),
              SizedBox(height: 21.v),
              Expanded(child: FluttermojiCustomizer()),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlabel(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 12.v,
      ),
      decoration:
          AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16, boxShadow: [BoxShadow(color: Colors.black)]),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              style: CustomTextStyles.titleMediumPrimary,
              controller: userNameController,
            ),
          ),
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgTwoDiceGame,
              height: 28.adaptSize,
              width: 28.adaptSize,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}
