import 'package:flutter/material.dart';

import './pages/home_page.dart';
import './pages/expenses_list.dart';
import './pages/settings.dart';

void main() => runApp(ExpensesTracker());

class ExpensesTracker extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => HomePage(),
        "/list": (BuildContext context) => ExpensesListPage(),
        "/settings": (BuildContext context) => SettingsPage()
      },
    );
  }
}