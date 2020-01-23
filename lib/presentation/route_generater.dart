import 'package:YesNoWTF/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting the Arguments passed when [Navigator.pushNamed] is called
    final args = settings.arguments;

    // Navigating to the route passed when [Navigator.pushNamed] is called
    switch (settings.name) {
      // Defult Route
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case "other page":
        if (args) {
          // Do Someting with the arguments

        } else {
          return _errorRoute();
        }
        break;
      default:
        return _errorRoute();
    }

    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Navigation error'),
          ),
        ),
      ),
    );
  }
}
