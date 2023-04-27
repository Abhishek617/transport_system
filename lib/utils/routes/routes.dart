import 'package:flutter/material.dart';

import '../../screens/permission2.dart';
class Routes {
  Routes._();

  //static variables
  static const String permission = '/screens';
  //static const String login = '/login';
  //static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    permission: (BuildContext context) => Location_Icon(),
    //login: (BuildContext context) => LoginScreen(),
    //home: (BuildContext context) => HomeScreen(),
  };
}