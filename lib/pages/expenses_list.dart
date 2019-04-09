import 'package:flutter/material.dart';

import '../drawer.dart';

class ExpensesListPage extends StatelessWidget {
  List expenses;

  ExpensesListPage(this.expenses);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Completa'),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: expenses
            .map(
              (value) => Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.black),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(value),
                    ),
                  ),
            )
            .toList(),
      ),
    );
  }
}
