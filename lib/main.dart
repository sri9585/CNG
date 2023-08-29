import 'package:cng/Feature/Screen/AddScreen/OnBoardingScreen.dart';
import 'package:cng/Route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      onGenerateRoute: (settings) => OnRouteGenerator(settings),
    );
  }
}
