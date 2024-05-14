import 'package:cimax_films_app/controller/splash_screen_controller.dart';
import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/screens/splash_screen.dart';
import 'package:cimax_films_app/view_models/signup_view_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/home_screen_main_controller.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Oops!.. \n error found in the code",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(details.exception.toString()),
          ],
        ),
      ),
    );
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpViewModel(),
        ), ChangeNotifierProvider(
          create: (context) => HomeScreenMainController(),
        ),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "CiMaX Movie App",
            theme: ThemeData.light(useMaterial3: true),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
