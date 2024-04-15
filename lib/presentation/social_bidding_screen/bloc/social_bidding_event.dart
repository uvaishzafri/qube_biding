part of 'social_bidding_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SocialBidding widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SocialBiddingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SocialBidding widget is first created.
class SocialBiddingInitialEvent extends SocialBiddingEvent {
  @override
  List<Object?> get props => [];
}
