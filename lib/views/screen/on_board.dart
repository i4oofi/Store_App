import 'package:ecommerce/views/widgets/on_board/custom_slider.dart';
import 'package:ecommerce/views/widgets/on_board/dot_controller.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomSlider(),
          ),
          SizedBox(
            height: 130,
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: DotController(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
