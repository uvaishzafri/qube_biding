import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bidding_state_model.dart';
part 'bidding_state_event.dart';
part 'bidding_state_state.dart';

/// A bloc that manages the state of a BiddingState according to the event that is dispatched to it.
class BiddingStateBloc extends Bloc<BiddingStateEvent, BiddingStateState> {
  BiddingStateBloc(BiddingStateState initialState) : super(initialState) {
    on<BiddingStateInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BiddingStateInitialEvent event,
    Emitter<BiddingStateState> emit,
  ) async {
    emit(state.copyWith(
      priceController: TextEditingController(),
    ));
  }
}
