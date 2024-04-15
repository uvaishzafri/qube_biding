import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/bidding_state_bloc.dart';
import 'models/bidding_state_model.dart'; // ignore_for_file: must_be_immutable

class BiddingStateBottomsheet extends StatelessWidget {
  const BiddingStateBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BiddingStateBloc>(
      create: (context) => BiddingStateBloc(BiddingStateState(
        biddingStateModelObj: BiddingStateModel(),
      ))
        ..add(BiddingStateInitialEvent()),
      child: BiddingStateBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4.v,
            width: 34.h,
            decoration: BoxDecoration(
              color: appTheme.indigo50,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          _buildHeader(context),
          SizedBox(height: 22.v),
          _buildBottomcontent(context),
          SizedBox(height: 18.v),
          CustomImageView(
            imagePath: ImageConstant.imgScreenshot20211227,
            height: 283.v,
            width: 393.h,
          ),
          SizedBox(height: 16.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 69.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(left: 273.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_current_top_bid".tr,
                    style: CustomTextStyles.labelLargePrimary,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "lbl_bid_to_enter".tr,
              style: CustomTextStyles.titleLargePrimary,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 241.h,
                  margin: EdgeInsets.only(top: 11.v),
                  child: Text(
                    "msg_the_bid_amount_will".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargePrimaryMedium.copyWith(
                      height: 1.38,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_500".tr,
                        style: CustomTextStyles.headlineMediumPrimary,
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        height: 6.v,
                        width: 41.h,
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.24),
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.37,
                            backgroundColor:
                                appTheme.black900.withOpacity(0.24),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomcontent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        children: [
          Container(
            width: 361.h,
            decoration: AppDecoration.outlineOnError.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: BlocSelector<BiddingStateBloc, BiddingStateState,
                      TextEditingController?>(
                    selector: (state) => state.priceController,
                    builder: (context, priceController) {
                      return CustomTextFormField(
                        width: 163.h,
                        controller: priceController,
                        hintText: "lbl_enter_bid_price".tr,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.only(
                            top: 1.v,
                            right: 8.h,
                            bottom: 2.v,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 24.v,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14.v)
              ],
            ),
          ),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            height: 50.v,
            text: "lbl_bid".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientPrimaryToPrimaryContainerDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 16.v)
        ],
      ),
    );
  }
}
