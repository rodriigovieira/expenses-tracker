import 'package:flutter/material.dart';

import '../drawer.dart';

class ExpensesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Completa'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('A lista com todas as despesas aparecerá aqui.'),
      ),
    );
  }
}
