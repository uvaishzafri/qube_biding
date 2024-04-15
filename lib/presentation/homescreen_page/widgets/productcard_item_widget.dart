import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/productcard_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(this.productcardItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Container(
          height: 540.v,
          width: 361.h,
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 540.v,
                width: 361.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Text(
                        "lbl_ends_in".tr,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer13,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            child: Text(
                              "lbl_5".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "lbl_m".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 1.v,
                              bottom: 1.v,
                            ),
                            child: Text(
                              "lbl_45".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "lbl_s".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 284.v),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.v),
                      decoration: AppDecoration.gradientBlackToBlack,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.v,
                              bottom: 16.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_qube_s_wool".tr,
                                  style: CustomTextStyles.titleLarge22,
                                ),
                                SizedBox(height: 1.v),
                                SizedBox(
                                  width: 196.h,
                                  child: Text(
                                    "msg_women_s_jacket_water".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        theme.textTheme.titleMedium!.copyWith(
                                      height: 1.31,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 9.v),
                                Container(
                                  width: 196.h,
                                  padding: EdgeInsets.symmetric(vertical: 5.v),
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 26.h),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text(
                                                      "lbl_top_bid".tr,
                                                      style: theme
                                                          .textTheme.labelLarge,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "lbl_500".tr,
                                                style: theme
                                                    .textTheme.headlineMedium,
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: SizedBox(
                                              height: 50.v,
                                              child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: 96.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: 1.v,
                                                    bottom: 2.v,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 4.h,
                                                    vertical: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder4,
                                                  ),
                                                  child: Text(
                                                    "lbl_bid_2".tr,
                                                    style: theme
                                                        .textTheme.labelLarge,
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_460".tr,
                                                  style: theme
                                                      .textTheme.titleLarge,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          SizedBox(
                                            width: 95.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: 1.v,
                                                    bottom: 2.v,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 4.h,
                                                    vertical: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder4,
                                                  ),
                                                  child: Text(
                                                    "lbl_bid_3".tr,
                                                    style: theme
                                                        .textTheme.labelLarge,
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_420".tr,
                                                  style: theme
                                                      .textTheme.titleLarge,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 16.v),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        decoration:
                                            AppDecoration.fillAmber.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFemale1116x16,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                      ),
                                      Container(
                                        height: 15.v,
                                        width: 17.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3.h,
                                          vertical: 4.v,
                                        ),
                                        decoration: AppDecoration.fillOnPrimary
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgTelevision,
                                          height: 7.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_4602".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: "lbl_6m".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer_1,
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        decoration:
                                            AppDecoration.fillAmber.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgFemale111,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                      ),
                                      Container(
                                        height: 15.v,
                                        width: 18.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3.h,
                                          vertical: 4.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillOrange.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgTelevisionOnprimarycontainer,
                                          height: 7.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: "lbl_280".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "lbl_6m".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer_1,
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        decoration:
                                            AppDecoration.fillAmber.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgFemale112,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                      ),
                                      Container(
                                        height: 15.v,
                                        width: 17.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3.h,
                                          vertical: 4.v,
                                        ),
                                        decoration: AppDecoration.fillOnPrimary
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgTelevision,
                                          height: 7.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: "lbl_270".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "lbl_6m".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer_1,
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        decoration:
                                            AppDecoration.fillAmber.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgFemale113,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                      ),
                                      Container(
                                        height: 15.v,
                                        width: 17.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3.h,
                                          vertical: 4.v,
                                        ),
                                        decoration: AppDecoration.fillOnPrimary
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgTelevision,
                                          height: 7.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: "lbl_250".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "lbl_6m".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer_1,
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.h,
                                    vertical: 2.v,
                                  ),
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 1.v),
                                        decoration:
                                            AppDecoration.fillAmber.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgFemale114,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                      ),
                                      Container(
                                        height: 16.v,
                                        width: 17.h,
                                        margin: EdgeInsets.only(bottom: 1.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 3.h,
                                          vertical: 4.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillOrange.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgTelevisionOnprimarycontainer,
                                          height: 7.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_230".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_6m".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryContainer,
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
