import 'package:coindex/App%20Pages/homepage.dart';
import 'package:coindex/Go%20Router/Project_Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Landing page/landingpage.dart';
import 'package:go_router/go_router.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(1920,1080),
      child: MaterialApp.router(
        // routeInformationParser:App_Routes().router.routeInformationParser,
        // routerDelegate:App_Routes().router.routerDelegate,
        routerConfig:App_Routes().router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),

      ),
    );
  }
}
