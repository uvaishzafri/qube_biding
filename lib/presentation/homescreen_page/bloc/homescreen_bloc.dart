import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/auctionitem_item_model.dart';
import '../models/homescreen_model.dart';
import '../models/productcard_item_model.dart';
part 'homescreen_event.dart';
part 'homescreen_state.dart';

/// A bloc that manages the state of a Homescreen according to the event that is dispatched to it.
class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  HomescreenBloc(HomescreenState initialState) : super(initialState) {
    on<HomescreenInitialEvent>(_onInitialize);
  }

  List<ProductcardItemModel> fillProductcardItemList() {
    return List.generate(1, (index) => ProductcardItemModel());
  }

  List<AuctionitemItemModel> fillAuctionitemItemList() {
    return List.generate(1, (index) => AuctionitemItemModel());
  }

  _onInitialize(
    HomescreenInitialEvent event,
    Emitter<HomescreenState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
      sliderIndex1: 0,
    ));
    emit(state.copyWith(
        homescreenModelObj: state.homescreenModelObj?.copyWith(
      productcardItemList: fillProductcardItemList(),
      auctionitemItemList: fillAuctionitemItemList(),
    )));
  }
}
