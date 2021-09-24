import 'package:flutter/cupertino.dart';
import 'package:tax_app/pages/rent_receipt.dart';
import 'package:tax_app/pages/tips_page.dart';
import 'package:tax_app/utils/arguments.dart';

class MyNavigator {

  static void goto80cTipsPage(BuildContext context) {
    Navigator.pushNamed(context, TipsPage.routeName ,arguments: ScreenArguments('80C', 0));
  }
  static void goto80DTipsPage(BuildContext context) {
    Navigator.pushNamed(context, TipsPage.routeName ,arguments: ScreenArguments('80D', 1));
  }
  static void goto80CCDTipsPage(BuildContext context) {
    Navigator.pushNamed(context, TipsPage.routeName ,arguments: ScreenArguments('80CCD', 2));
  }
  static void gotoRentPage(BuildContext context) {
    Navigator.pushNamed(context, RentPage.routeName);
  }
}