import 'package:ecommerce/controller/onBoard/on_board_state.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/source/static/static.dart';
import 'package:flutter/material.dart';

class OnBoardCubit extends Cubit<OnBoardState> {
  OnBoardCubit() : super(OnBoardState());

  final PageController pageController = PageController();

  void onPageChanged(int page) {
    emit(state.copyWith(currentPage: page));
  }

  void nextPage() {
    if (state.currentPage < onBoardList.length - 1) {
      pageController.animateToPage(
        state.currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  bool isLastPage() => state.currentPage == onBoardList.length - 1;
}
