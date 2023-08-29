import 'package:cng/Feature/Screen/Auth/Login.dart';
import 'package:flutter/material.dart';

Route<dynamic> OnRouteGenerator(RouteSettings settings) {
  switch (settings.name) {
    case Login.route:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const Login(),
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
