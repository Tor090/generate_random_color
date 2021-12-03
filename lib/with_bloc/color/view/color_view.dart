import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generate_random_color/with_bloc/color/cubit/color_cubit.dart';

class ColorView extends StatelessWidget {
  const ColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: BlocBuilder<ColorCubit, Color>(builder: (context, state) {
        return InkWell(
          onTap: () => context.read<ColorCubit>().changeColor(),
          onLongPress: () => context.read<ColorCubit>().defaultColor(),
          child: Container(
            alignment: Alignment.center,
            color: state,
            child: const Text(
              'Hey there',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        );
      })),
    );
  }
}
