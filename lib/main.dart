import 'package:ecommerce/controller/onBoard/on_board_cubit.dart';
import 'package:ecommerce/core/constant/app_color.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/views/screen/on_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
        theme: ThemeData(
          fontFamily: GoogleFonts.inter().fontFamily,
          textTheme: TextTheme(
            headlineMedium: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            bodyMedium: TextStyle(color: AppColor.black60Shade, height: 1.5),
          ),
        ),
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: const OnBoard(),
      ),
    );
  }
}
