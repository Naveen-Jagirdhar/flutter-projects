import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  bool _theme = true;

  bool get isTheme => _theme;

  void switchTheme () {_theme = !_theme; notifyListeners();}
}