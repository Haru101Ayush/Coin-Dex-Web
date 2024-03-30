import 'package:go_router/go_router.dart';
import '../App Pages/homepage.dart';
import '../Landing page/landingpage.dart';
import 'package:flutter/material.dart';
class App_Routes{
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState  state) => const Landing_page() ,
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState  state) => const HomeScreen(),
      ),
    ],
  );
}
