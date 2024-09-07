import 'package:go_router/go_router.dart';
import '../App Pages/homepage.dart';
import '../Authentication/Sign_Up.dart';
import '../Authentication/Sign_In.dart';
import '../Landing page & Splash Screen/landingpage.dart';
import 'package:flutter/material.dart';

class App_Routes{
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState  state) =>  Landing_page() ,
      ),
      GoRoute(
        path: '/SignIn',
        builder: (BuildContext context, GoRouterState  state) =>  Sign_In(),
      ),
      GoRoute(
        path: '/SignUp',
        builder: (BuildContext context, GoRouterState  state) =>  Sign_Up(),
      ),
      GoRoute(
        path: '/Home',
        builder: (BuildContext context, GoRouterState  state) =>  HomeScreen(),
      ),
    ],
  );
}
