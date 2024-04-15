import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/homescreen_bloc.dart';
import 'models/auctionitem_item_model.dart';
import 'models/homescreen_model.dart';
import 'models/productcard_item_model.dart';
import 'widgets/auctionitem_item_widget.dart';
import 'widgets/productcard_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomescreenPage extends StatelessWidget {
  const HomescreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomescreenBloc>(
      create: (context) => HomescreenBloc(HomescreenState(
        homescreenModelObj: HomescreenModel(),
      ))
        ..add(HomescreenInitialEvent()),
      child: HomescreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 540.v,
                    width: 361.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildProductcard(context),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: BlocBuilder<HomescreenBloc, HomescreenState>(
                            builder: (context, state) {
                              return Container(
                                height: 8.v,
                                margin: EdgeInsets.only(bottom: 12.v),
                                child: AnimatedSmoothIndicator(
                                  activeIndex: state.sliderIndex,
                                  count: state.homescreenModelObj
                                          ?.productcardItemList.length ??
                                      0,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                    spacing: 4,
                                    activeDotColor: theme
                                        .colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    dotColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    dotHeight: 8.v,
                                    dotWidth: 8.h,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    height: 540.v,
                    width: 361.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildAuctionitem(context),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: BlocBuilder<HomescreenBloc, HomescreenState>(
                            builder: (context, state) {
                              return Container(
                                height: 8.v,
                                margin: EdgeInsets.only(bottom: 12.v),
                                child: AnimatedSmoothIndicator(
                                  activeIndex: state.sliderIndex1,
                                  count: state.homescreenModelObj
                                          ?.auctionitemItemList.length ??
                                      0,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                    spacing: 4,
                                    activeDotColor: theme
                                        .colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    dotColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    dotHeight: 8.v,
                                    dotWidth: 8.h,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgClose,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.v,
          bottom: 21.v,
        ),
        onTap: () {
          onTapCloseone(context);
        },
      ),
      title: AppbarTitle(
        text: "lbl_qube_bidding".tr,
        margin: EdgeInsets.only(left: 4.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 24.v),
        )
      ],
      styleType: Style
          .bgGradientnameonPrimaryContaineropacity1nameonPrimaryContaineropacity0,
    );
  }

  /// Section Widget
  Widget _buildProductcard(BuildContext context) {
    return BlocBuilder<HomescreenBloc, HomescreenState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 541.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              state.sliderIndex = index;
            },
          ),
          itemCount: state.homescreenModelObj?.productcardItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            ProductcardItemModel model =
                state.homescreenModelObj?.productcardItemList[index] ??
                    ProductcardItemModel();
            return ProductcardItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAuctionitem(BuildContext context) {
    return BlocBuilder<HomescreenBloc, HomescreenState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 540.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              state.sliderIndex1 = index;
            },
          ),
          itemCount: state.homescreenModelObj?.auctionitemItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            AuctionitemItemModel model =
                state.homescreenModelObj?.auctionitemItemList[index] ??
                    AuctionitemItemModel();
            return AuctionitemItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Navigates to the previous screen.
  onTapCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}
