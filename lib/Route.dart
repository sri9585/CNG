import 'package:cng/Feature/Screen/Auth/Login.dart';
import 'package:cng/Feature/Screen/Auth/SignUp.dart';
import 'package:flutter/material.dart';

Route<dynamic> onRouteGenerator(RouteSettings settings) {
  switch (settings.name) {
    case Login.route:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const Login(),
      );
    case SignUp.route:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const SignUp(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Page Not Found!'),
          ),
        ),
      );
  }
}
