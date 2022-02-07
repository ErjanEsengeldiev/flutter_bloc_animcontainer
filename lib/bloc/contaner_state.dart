import 'package:flutter/material.dart';

abstract class ContanerState {}

class ContanerChangedState extends ContanerState {
  double width;
  double heght;
  Color color;
  ContanerChangedState(
      {required this.color, required this.heght, required this.width});
}
