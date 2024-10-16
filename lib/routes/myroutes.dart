// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:sinnonteq_test/utils/constants/constants.dart';
import 'package:sinnonteq_test/view/homescreen.dart';
import 'package:sinnonteq_test/view/navigationscreen.dart';
import 'package:sinnonteq_test/view/profilescreen.dart';
import 'package:sinnonteq_test/view/signinscreen.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorkey,
  initialLocation: '/signinscreen',
  routes: [
    GoRoute(
      path: '/signinscreen',
      builder: (context, state) => Signinscreen(),
    ),
    GoRoute(
      path: '/homescreen',
      builder: (context, state) => Homescreen(),
    ),
    GoRoute(
      path: '/bottomnavscreen',
      builder: (context, state) => BottomNavScreen(),
    ),
    GoRoute(
      path: '/profilescreen',
      builder: (context, state) => Profilescreen(),
    ),
  ],
);
