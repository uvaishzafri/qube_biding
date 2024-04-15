part of 'social_bidding_bloc.dart';

/// Represents the state of SocialBidding in the application.

// ignore_for_file: must_be_immutable
class SocialBiddingState extends Equatable {
  SocialBiddingState({this.socialBiddingModelObj});

  SocialBiddingModel? socialBiddingModelObj;

  @override
  List<Object?> get props => [socialBiddingModelObj];
  SocialBiddingState copyWith({SocialBiddingModel? socialBiddingModelObj}) {
    return SocialBiddingState(
      socialBiddingModelObj:
          socialBiddingModelObj ?? this.socialBiddingModelObj,
    );
  }
}
