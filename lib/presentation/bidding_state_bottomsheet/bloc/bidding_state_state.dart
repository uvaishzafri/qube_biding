part of 'bidding_state_bloc.dart';

/// Represents the state of BiddingState in the application.

// ignore_for_file: must_be_immutable
class BiddingStateState extends Equatable {
  BiddingStateState({this.priceController, this.biddingStateModelObj});

  TextEditingController? priceController;

  BiddingStateModel? biddingStateModelObj;

  @override
  List<Object?> get props => [priceController, biddingStateModelObj];
  BiddingStateState copyWith({
    TextEditingController? priceController,
    BiddingStateModel? biddingStateModelObj,
  }) {
    return BiddingStateState(
      priceController: priceController ?? this.priceController,
      biddingStateModelObj: biddingStateModelObj ?? this.biddingStateModelObj,
    );
  }
}
