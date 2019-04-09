import 'package:flutter/material.dart';

import './pages/home_page.dart';
import './pages/expenses_list.dart';
import './pages/settings.dart';

void main() => runApp(ExpensesTracker());

class ExpensesTracker extends StatelessWidget {
  List expenses = [];

  addExpense(String value) {
    expenses.add(value);
  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => HomePage(addExpense),
        "/list": (BuildContext context) => ExpensesListPage(expenses),
        "/settings": (BuildContext context) => SettingsPage()
      },
    );
  }
}