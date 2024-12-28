import 'package:ecommerce/controller/onBoard/on_board_cubit.dart';
import 'package:ecommerce/controller/onBoard/on_board_state.dart';
import 'package:ecommerce/data/source/static/static.dart';
import 'package:ecommerce/views/widgets/on_board/custom_navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DotController extends StatelessWidget {
  const DotController({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardCubit, OnBoardState>(
      builder: (context, state) {
        // في حالة الصفحة الأخيرة
        if (context.read<OnBoardCubit>().isLastPage()) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: CustomNavigate()),
              ],
            ),
          );
        }

        // في حالة الصفحات العادية
        return Row(
          children: [
            ...List.generate(
              onBoardList.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                margin: const EdgeInsets.only(right: 2),
                width: state.currentPage == index ? 30 : 10,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: state.currentPage == index
                      ? Colors.black
                      : Colors.black.withOpacity(0.3),
                ),
              ),
            ),
            const Spacer(flex: 1),
            const CustomNavigate(),
          ],
        );
      },
    );
  }
}
