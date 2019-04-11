import 'package:flutter/material.dart';


class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}


class _CalculatorPageState extends State<CalculatorPage> {
  
  double _screenValue = 0;

  Widget _calculatorButton({String text: "" ,Function onPressed, Icon icon, Color color: Colors.blueGrey}){
    final textWidget = Text(text, style: TextStyle(
      color: Colors.white,
      fontSize: 30.0
    ));
    Widget buttonChild = textWidget;
    if(icon != null){
      buttonChild = icon;
    } 

    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 5.0),
      height: 70.0,
      width: ((MediaQuery.of(context).size.width-20)/4),
      child:  FlatButton(
          color: color,
          child: buttonChild,
          padding: EdgeInsets.all(0.0),
          onPressed: onPressed,
        ),
    );
  }  

  @override
  Widget build(BuildContext context) {
    final screen = Container(
    margin: EdgeInsets.only(top: 10.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue, width: 2.0),
      shape: BoxShape.rectangle
    ),
    width: MediaQuery.of(context).size.width,
    height: 60.0,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Text(_screenValue.toStringAsFixed(2),
        style: TextStyle(
          fontSize: 40.0
        ),
      ),
    ),
  );

    final rowOne = Row(
      children: <Widget>[
        _calculatorButton(
          text: 'CE', 
          onPressed: (){},
          ),
      ],
    );

    // TODO: implement build
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0 ),
    child: ListView(
      children: <Widget>[
        screen,
        rowOne
      ],
    )
    );
  }
  
}