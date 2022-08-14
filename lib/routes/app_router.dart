import 'package:blocvalidation/screens/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HomeView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
              body: Center(
            child: Text('Error route'),
          )),
        );
    }
  }
}
