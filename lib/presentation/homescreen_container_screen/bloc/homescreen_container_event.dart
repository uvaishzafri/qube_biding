part of 'homescreen_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomescreenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomescreenContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomescreenContainer widget is first created.
class HomescreenContainerInitialEvent extends HomescreenContainerEvent {
  @override
  List<Object?> get props => [];
}
