// ignore_for_file: prefer_const_constructors

import 'package:first_app_flutter/scr/routes/routing_const.dart';
import 'package:first_app_flutter/scr/screens/auth/auth_screen.dart';
import 'package:flutter/cupertino.dart';


import '../screens/register_screen/register_widget.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => RegisterScreen(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => AuthScreen(),
        );
    }
  }
}