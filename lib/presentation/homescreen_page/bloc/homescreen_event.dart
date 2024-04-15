part of 'homescreen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Homescreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomescreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Homescreen widget is first created.
class HomescreenInitialEvent extends HomescreenEvent {
  @override
  List<Object?> get props => [];
}
