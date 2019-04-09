import 'package:flutter/material.dart';

import '../drawer.dart';
import '../button_pad.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String _displayText = 'Hello, World!';
  String _operationType = '';

  changeDisplayText(String text) {
    if (text == 'LIMPAR') {
      setState(() => _displayText = '0');
    } else if (text == '+' || text == '-') {
      setState(() => _operationType = text);
    } else {
      setState(() => _displayText += text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: Text(
              _displayText,
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Text(
              _operationType,
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          ButtonPad(changeDisplayText)
        ],
      ),
    );
  }
}
