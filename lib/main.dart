import 'package:ecommerce/controller/onBoard/on_board_cubit.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/views/screen/on_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Store());
}

class Store extends StatelessWidget {
  const Store({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardCubit(),
      child: MaterialApp(
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: const OnBoard(),
      ),
    );
  }
}
