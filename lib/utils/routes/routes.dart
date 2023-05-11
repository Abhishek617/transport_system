import 'package:flutter/material.dart';

import '../../screens/permission2.dart';
import '../../screens/terms_conditions.dart';
class Routes {
  Routes._();

  //static variables
  static const String permission = "/location_permission";
  static const String login = '/terms_conditions';
  static const String terms_conditions = '/terms_conditions';
  //static const String home = '/home';



  static final routes = <String, WidgetBuilder>{
    permission: (BuildContext context) => Location_Icon(),
    terms_conditions: (BuildContext context) => Permission(),
    //login: (BuildContext context) => LoginScreen(),
    //home: (BuildContext context) => HomeScreen(),
  };


  static navigateToScreen(BuildContext context, route) {
    Navigator.of(context).pushNamed(route);
  }

  static navigateRootToScreen(BuildContext context, route) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(route, (Route route) => false);
  }

  static navigateToScreenWithArgs(
      BuildContext context, route, successErrorValidationPageArgs) {
    Navigator.of(context)
        .pushNamed(route, arguments: successErrorValidationPageArgs);
  }

  static goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
