import 'package:flutter/material.dart';

import '../drawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MyDrawer(),
      body: Container(
        margin: EdgeInsets.all(80.0),
        child: Center(
          child:
              Text('As configurações e detalhes adicionais aparecerão aqui.'),
        ),
      ),
    );
  }
}
