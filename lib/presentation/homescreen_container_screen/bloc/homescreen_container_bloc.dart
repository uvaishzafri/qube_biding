import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/homescreen_container_model.dart';
part 'homescreen_container_event.dart';
part 'homescreen_container_state.dart';

/// A bloc that manages the state of a HomescreenContainer according to the event that is dispatched to it.
class HomescreenContainerBloc
    extends Bloc<HomescreenContainerEvent, HomescreenContainerState> {
  HomescreenContainerBloc(HomescreenContainerState initialState)
      : super(initialState) {
    on<HomescreenContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomescreenContainerInitialEvent event,
    Emitter<HomescreenContainerState> emit,
  ) async {}
}
