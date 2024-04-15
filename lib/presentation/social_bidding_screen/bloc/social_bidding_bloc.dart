import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/social_bidding_model.dart';
part 'social_bidding_event.dart';
part 'social_bidding_state.dart';

/// A bloc that manages the state of a SocialBidding according to the event that is dispatched to it.
class SocialBiddingBloc extends Bloc<SocialBiddingEvent, SocialBiddingState> {
  SocialBiddingBloc(SocialBiddingState initialState) : super(initialState) {
    on<SocialBiddingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SocialBiddingInitialEvent event,
    Emitter<SocialBiddingState> emit,
  ) async {}
}
