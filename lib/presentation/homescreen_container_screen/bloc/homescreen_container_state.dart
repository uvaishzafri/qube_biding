part of 'homescreen_container_bloc.dart';

/// Represents the state of HomescreenContainer in the application.

// ignore_for_file: must_be_immutable
class HomescreenContainerState extends Equatable {
  HomescreenContainerState({this.homescreenContainerModelObj});

  HomescreenContainerModel? homescreenContainerModelObj;

  @override
  List<Object?> get props => [homescreenContainerModelObj];
  HomescreenContainerState copyWith(
      {HomescreenContainerModel? homescreenContainerModelObj}) {
    return HomescreenContainerState(
      homescreenContainerModelObj:
          homescreenContainerModelObj ?? this.homescreenContainerModelObj,
    );
  }
}
