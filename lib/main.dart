import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_block_1/bloc/contaner_bloc.dart';

import 'bloc/contaner_events.dart';
import 'bloc/contaner_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final ContainerBloc _containerBloc = ContainerBloc();

  @override
  Widget build(BuildContext context) {
    print('rebild');
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => _containerBloc.add(RebildEvent()),
              icon: const Icon(Icons.replay_outlined))
        ],
        title: const Text('AnimatedContainer with Bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<ContainerBloc, ContanerState>(
            bloc: _containerBloc,
            builder: (context, state) {
              if (state is ContanerChangedState) {
                return AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  decoration: BoxDecoration(
                      color: state.color,
                      borderRadius: BorderRadius.circular(30)),
                  width: state.width,
                  height: state.heght,
                );
              } else {
                return const Text('eror');
              }
            }),
      ),
    );
  }
}
