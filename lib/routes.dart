import 'package:ecommerce/core/constant/app_route.dart';
import 'package:ecommerce/views/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.loginId: (context) => const Login(),
};
