import 'package:flutter/material.dart';
import 'package:user_app/core/routes/routes_name.dart';
import 'package:user_app/view/explorer_view.dart';
import 'package:user_app/view/home_view.dart';
import 'package:user_app/view/main_view.dart';
import 'package:user_app/view/login_view.dart';
import 'package:user_app/view/mypage_view.dart';
import 'package:user_app/view/portal_view.dart';
import 'package:user_app/view/settings_view.dart';

var namedRoutes = <String, WidgetBuilder>{
  RoutesName.home: (context) => const HomeScreen(),
  RoutesName.login: (context) => const LoginScreen(),
  RoutesName.settings: (context) => const SettingsScreen(),
  RoutesName.portal: (context) => const PortalScreen(),

  // RoutesName.mypage: (context) => const MyPageScreen(),
  // RoutesName.explorer: (context) => const ExplorerScreen(),
};
