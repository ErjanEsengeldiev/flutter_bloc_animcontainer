import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_block_1/bloc/contaner_state.dart';
import 'contaner_events.dart';

class ContainerBloc extends Bloc<ContainerEvent, ContanerState> {
  ContainerBloc()
      : super(
          ContanerChangedState(
            width: Random().nextInt(100).toDouble(),
            heght: Random().nextInt(100).toDouble(),
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
        ) {
    on<RebildEvent>((event, emit) => emit(
          ContanerChangedState(
            width: Random().nextInt(300).toDouble(),
            heght: Random().nextInt(300).toDouble(),
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
        ));
  }
}
