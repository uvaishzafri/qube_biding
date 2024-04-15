part of 'bidding_state_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BiddingState widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BiddingStateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BiddingState widget is first created.
class BiddingStateInitialEvent extends BiddingStateEvent {
  @override
  List<Object?> get props => [];
}
