import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorCubit extends Cubit<Color> {
  ColorCubit() : super(Color(0xFFFFFFFF));

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    _color = Color.fromARGB(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
    emit(_color);
  }

  void defaultColor() {
    _color = Color(0xFFFFFFFF);
    emit(_color);
  }
}
