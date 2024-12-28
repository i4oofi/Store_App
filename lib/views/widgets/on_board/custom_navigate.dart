import 'package:ecommerce/controller/onBoard/on_board_cubit.dart';
import 'package:ecommerce/controller/onBoard/on_board_state.dart';
import 'package:ecommerce/core/constant/app_color.dart';
import 'package:ecommerce/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavigate extends StatelessWidget {
  const CustomNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardCubit, OnBoardState>(
      builder: (context, state) {
        // اذا كانت الصفحة الأخيرة نعرض أزرار تسجيل الدخول
        if (context.read<OnBoardCubit>().isLastPage()) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.loginId);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColor.primaryColor),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          );
        }

        // اذا لم تكن الصفحة الأخيرة نعرض زر التنقل العادي
        return RawMaterialButton(
          onPressed: () {
            context.read<OnBoardCubit>().nextPage();
          },
          elevation: 2.0,
          fillColor: AppColor.primaryColor,
          constraints: const BoxConstraints(minWidth: 0.0),
          padding: const EdgeInsets.all(15.0),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white,
            size: 20.0,
          ),
        );
      },
    );
  }
}
