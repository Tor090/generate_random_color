import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'color/view/color_page.dart';
import 'color_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(ColorPage()),
    blocObserver: ColorObserver(),
  );
}
