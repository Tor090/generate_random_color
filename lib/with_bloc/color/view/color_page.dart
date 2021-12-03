import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generate_random_color/with_bloc/color/cubit/color_cubit.dart';

import 'color_view.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ColorCubit(),
      child: ColorView(),
    );
  }
}
