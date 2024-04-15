import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_button_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/social_bidding_bloc.dart';
import 'models/social_bidding_model.dart';

class SocialBiddingScreen extends StatelessWidget {
  const SocialBiddingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SocialBiddingBloc>(
      create: (context) => SocialBiddingBloc(SocialBiddingState(
        socialBiddingModelObj: SocialBiddingModel(),
      ))
        ..add(SocialBiddingInitialEvent()),
      child: SocialBiddingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialBiddingBloc, SocialBiddingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppbar(context),
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black90001.withOpacity(0.08),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      8,
                    ),
                  )
                ],
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgSocialBiddingScreen,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    _buildRowswiperone(context),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 36.v,
                      ),
                      decoration: AppDecoration.gradientBlackToBlack,
                      child: Column(
                        children: [
                          SizedBox(height: 27.v),
                          _buildStacktitlet1b(context),
                          SizedBox(height: 16.v),
                          _buildBottomwrapper(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 65.v,
      leadingWidth: 32.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_qube_s_wool".tr,
              margin: EdgeInsets.only(right: 144.h),
            ),
            AppbarSubtitleOne(
              text: "msg_women_s_jacket_water".tr,
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingButtonOne(
          margin: EdgeInsets.fromLTRB(8.h, 13.v, 8.h, 12.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowswiperone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8.v,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 133.v,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 5,
              effect: ScrollingDotsEffect(
                spacing: 4,
                activeDotColor:
                    theme.colorScheme.onPrimaryContainer.withOpacity(1),
                dotColor: theme.colorScheme.onPrimaryContainer,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(left: 25.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Text(
                      "lbl_top_bid".tr,
                      style: theme.textTheme.labelLarge,
                    )
                  ],
                ),
              ),
              Text(
                "lbl_540".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 6.v),
              Container(
                margin: EdgeInsets.only(left: 23.h),
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_bid_2".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Text(
                "lbl_460".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              Container(
                margin: EdgeInsets.only(left: 24.h),
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_bid_3".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Text(
                "lbl_420".tr,
                style: theme.textTheme.titleLarge,
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStacktitlet1b(BuildContext context) {
    return SizedBox(
      height: 288.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 155.h,
                right: 70.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              decoration: AppDecoration.outlineBlack90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.v),
                  Text(
                    "msg_tap_again_to_bid".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 7.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgChevron,
                    height: 1.v,
                    width: 16.h,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 264.h,
                bottom: 8.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 52.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_my_bids".tr,
                          style: theme.textTheme.labelLarge,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder11,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 16.v,
                          width: 17.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillGreen.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgTelevisionOnprimarycontainer7x11,
                            height: 7.v,
                            width: 11.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_545".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_12m".tr,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 112.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 17.v,
                    width: 248.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.h),
                            decoration:
                                AppDecoration.gradientBlackToGrayD.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 4.v),
                                  decoration:
                                      AppDecoration.fillGreen100.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgMale612x20,
                                    height: 12.v,
                                    width: 20.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 4.v,
                                  ),
                                  child: Text(
                                    "msg_abhinav_has_added".tr,
                                    style: CustomTextStyles.labelLargeMedium,
                                  ),
                                ),
                                Container(
                                  height: 10.v,
                                  width: 17.h,
                                  margin: EdgeInsets.only(
                                    left: 6.h,
                                    bottom: 4.v,
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.h),
                                  decoration: AppDecoration.fillOrange.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgTelevisionOnprimarycontainer,
                                    height: 6.v,
                                    width: 11.h,
                                    alignment: Alignment.topCenter,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 29.h),
                            child: Text(
                              "lbl_460".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildChatupdate(
                    context,
                    description: "msg_abhinav_sprinklesquirrel".tr,
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.gradientBlackToGrayD.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                          decoration: AppDecoration.fillGreen100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMale61,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "msg_abhinav_has_added".tr,
                            style: CustomTextStyles.labelLargeMedium,
                          ),
                        ),
                        Container(
                          height: 16.v,
                          width: 17.h,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 3.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgTelevisionOnprimarycontainer,
                            height: 7.v,
                            width: 11.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_460".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildChatupdate(
                    context,
                    description: "msg_abhinav_lorem_ipsum".tr,
                  ),
                  SizedBox(height: 12.v),
                  _buildChatupdate(
                    context,
                    description: "msg_abhinav_lorem_ipsum".tr,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomwrapper(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          height: 45.v,
          width: 188.h,
          text: "msg_say_something_nice".tr,
          buttonStyle: CustomButtonStyles.fillGrayE,
          buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame26090542,
                height: 4.v,
                width: 12.h,
              ),
              SizedBox(height: 1.v),
              Text(
                "lbl_50".tr,
                style: CustomTextStyles.titleLargePrimary_1,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame26090542Black900,
                height: 4.v,
                width: 12.h,
              ),
              SizedBox(height: 1.v),
              Text(
                "lbl_100".tr,
                style: CustomTextStyles.titleLargePrimary_1,
              )
            ],
          ),
        ),
        CustomElevatedButton(
          height: 45.v,
          width: 54.h,
          text: "lbl_bid2".tr,
          buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
          buttonTextStyle: CustomTextStyles.titleLargePrimary_1,
        )
      ],
    );
  }

  /// Common widget
  Widget _buildChatupdate(
    BuildContext context, {
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 52.v,
            ),
            decoration: AppDecoration.fillGreen100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgMale62,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          Expanded(
            child: Container(
              width: 214.h,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 1.v,
              ),
              child: Text(
                description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnPrimaryContainerMedium
                    .copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  height: 1.38,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
