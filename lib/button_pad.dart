import 'package:flutter/material.dart';

class ButtonPad extends StatelessWidget {
  final Function changeDisplayText;

  ButtonPad(this.changeDisplayText);

  @override

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
             _ButtonBuilder(changeDisplayText, '+', textColor: Colors.green),
             _ButtonBuilder(changeDisplayText, '-', textColor: Colors.red[900]),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
             _ButtonBuilder(changeDisplayText, '1'),
             _ButtonBuilder(changeDisplayText, '2'),
             _ButtonBuilder(changeDisplayText, '3'),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
             _ButtonBuilder(changeDisplayText, '4'),
             _ButtonBuilder(changeDisplayText, '5'),
             _ButtonBuilder(changeDisplayText, '6'),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
             _ButtonBuilder(changeDisplayText, '7'),
             _ButtonBuilder(changeDisplayText, '8'),
             _ButtonBuilder(changeDisplayText, '9'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 40.0),
          child: Row(
            children: <Widget>[
             _ButtonBuilder(changeDisplayText, 'LIMPAR'),
             _ButtonBuilder(changeDisplayText, 'CRIAR', textColor: Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}

class _ButtonBuilder extends StatelessWidget {
  final Function changeDisplayText;
  final String buttonText;
  final Color textColor;

  _ButtonBuilder(this.changeDisplayText, this.buttonText, {this.textColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlineButton(
        borderSide: BorderSide(width: .5, color: Colors.black.withOpacity(.8)),
        padding: EdgeInsets.all(24.0),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold, color: textColor),
        ),
        onPressed: () => changeDisplayText(buttonText),
      ),
    );
  }
}
