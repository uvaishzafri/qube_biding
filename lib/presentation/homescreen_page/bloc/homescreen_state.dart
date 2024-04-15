part of 'homescreen_bloc.dart';

/// Represents the state of Homescreen in the application.

// ignore_for_file: must_be_immutable
class HomescreenState extends Equatable {
  HomescreenState(
      {this.sliderIndex = 0, this.sliderIndex1 = 0, this.homescreenModelObj});

  HomescreenModel? homescreenModelObj;

  int sliderIndex;

  int sliderIndex1;

  @override
  List<Object?> get props => [sliderIndex, sliderIndex1, homescreenModelObj];
  HomescreenState copyWith({
    int? sliderIndex,
    int? sliderIndex1,
    HomescreenModel? homescreenModelObj,
  }) {
    return HomescreenState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      sliderIndex1: sliderIndex1 ?? this.sliderIndex1,
      homescreenModelObj: homescreenModelObj ?? this.homescreenModelObj,
    );
  }
}
