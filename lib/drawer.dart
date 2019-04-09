import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Menu'),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Página Inicial'),
              onTap: () => Navigator.pushNamed(context, '/'),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Lista Completa'),
              onTap: () => Navigator.pushNamed(context, '/list'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () => Navigator.pushReplacementNamed(context, '/settings'),
            )
          ],
        ),
      );
  }
}