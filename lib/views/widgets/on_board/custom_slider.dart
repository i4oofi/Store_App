import 'package:ecommerce/controller/onBoard/on_board_cubit.dart';
import 'package:ecommerce/controller/onBoard/on_board_state.dart';
import 'package:ecommerce/data/source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardCubit, OnBoardState>(
      builder: (context, state) {
        return Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              height: double.infinity,
            ),
            PageView.builder(
              controller: context.read<OnBoardCubit>().pageController,
              onPageChanged: (value) {
                context.read<OnBoardCubit>().onPageChanged(value);
              },
              itemCount: onBoardList.length,
              itemBuilder: (context, index) => Column(
                children: [
                  // Shape image at the very top
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      onBoardList[index].shape!,
                      scale: 3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Main content with conditional spacing for the second image
                  if (index == 1)
                    const SizedBox(height: 0) // Less space for second image
                  else
                    const Spacer(flex: 1), // Normal space for other images
                  Image.asset(
                    onBoardList[index].image!,
                    scale: 3.3,
                  ),
                  const SizedBox(height: 10),
                  Text(onBoardList[index].title!,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      onBoardList[index].body!,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
