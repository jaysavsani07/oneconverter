import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  createState() => SimpleCalculatorState();
}

class SimpleCalculatorState extends State<SimpleCalculator> {
  static var num1 = "0",
      num2 = "0",
      ansStr = '0',
      ans = 0,
      oper = '',
      cal = '',
      flag = 0;

  void clear() => setState(() {
        num1 = "0";
        num2 = "0";
        ansStr = '0';
        ans = 0;
        oper = '';
        flag = 0;
        cal = '';
      });

  void add() => setState(() {
        cal = cal + "+";
        oper = '+';
        if (flag == 0) {
          num2 = num1;
        } else {
          num2 = ansStr;
        }
        num1 = '0';
      });

  void substract() => setState(() {
        oper = '-';
        cal = cal + "-";
        if (flag == 0) {
          num2 = num1;
        } else {
          num2 = ansStr;
        }
        num1 = '0';
      });

  void mul() => setState(() {
        oper = '*';
        cal = cal + "*";
        if (flag == 0) {
          num2 = num1;
        } else {
          num2 = ansStr;
        }
        num1 = '0';
      });

  void div() => setState(() {
        oper = '/';
        cal = cal + "/";
        if (flag == 0) {
          num2 = num1;
        } else {
          num2 = ansStr;
        }
        num1 = '0';
      });

  void one() => setState(() {
        cal = cal + "1";
        num1 += "1";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void two() => setState(() {
        num1 += "2";
        cal = cal + "2";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void three() => setState(() {
        num1 += "3";
        cal = cal + "3";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void four() => setState(() {
        num1 += "4";
        cal = cal + "4";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void five() => setState(() {
        num1 += "5";
        cal = cal + "5";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void six() => setState(() {
        num1 += "6";
        cal = cal + "6";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void seven() => setState(() {
        num1 += "7";
        cal = cal + "7";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void eight() => setState(() {
        num1 += "8";
        cal = cal + "8";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void nine() => setState(() {
        num1 += "9";
        cal = cal + "9";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void zero() => setState(() {
        num1 += "0";
        cal = cal + "0";
        ans = int.parse(num1);
        // ansStr = "$ans";
      });

  void disp() => setState(() {
        if (oper == '+') {
          ans = int.parse(num1) + int.parse(num2);
          flag++;
        } else if (oper == '-') {
          ans = int.parse(num2) - int.parse(num1);
          flag++;
        } else if (oper == '*') {
          ans = int.parse(num2) * int.parse(num1);
          flag++;
        } else if (oper == '/') {
          ans = int.parse(num2) ~/ int.parse(num1);
          flag++;
        }
        ansStr = "$ans";
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          AnswerText(answer: ansStr),
          CalculateText(
            calculation: cal,
          ),
          Container(),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  color: Color.fromRGBO(39, 23, 67, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buttonPurple("C", clear),
                      _buttonPurple("DEL", zero),
                      _buttonPurple("%", disp),
                      _buttonPink("÷", Color.fromRGBO(253, 0, 129, 1), div)
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _button("9", nine),
                  _button("8", eight),
                  _button("7", seven),
                  _buttonPink("x", Color.fromRGBO(253, 0, 129, 1), mul)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _button("4", four),
                  _button("5", five),
                  _button("6", six),
                  _buttonPink("−", Color.fromRGBO(253, 0, 129, 1), substract)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _button("1", one),
                  _button("2", two),
                  _button("3", three),
                  _buttonPinkDark("+", Color.fromRGBO(231, 0, 117, 1), add)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _button(".", clear),
                  _button("0", zero),
                  _button("=", disp),
                  _buttonPinkDark("", Color.fromRGBO(231, 0, 117, 1), add),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _button(String number, Function() f) {
    return MaterialButton(
      height: 80.0,
      elevation: 0.0,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0)),
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Color.fromRGBO(98, 89, 121, 1),
      color: Colors.white,
      onPressed: f,
    );
  }

  Widget _buttonPurple(String number, Function() f) {
    return MaterialButton(
      padding: EdgeInsets.all(0.0),
      height: 80.0,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0)),
      elevation: 0.0,
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Colors.white,
      color: Color.fromRGBO(39, 23, 67, 1),
      onPressed: f,
    );
  }

  Widget _buttonPink(String number, Color color, Function() f) {
    return MaterialButton(
      padding: EdgeInsets.all(0.0),
      height: 80.0,
      elevation: 0.0,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0)),
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Colors.white,
      color: color,
      onPressed: f,
    );
  }

  Widget _buttonPinkDark(String number, Color color, Function() f) {
    return MaterialButton(
      padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
      height: 80.0,
      elevation: 0.0,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0)),
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Colors.white,
      color: color,
      onPressed: f,
    );
  }
}

class AnswerText extends StatelessWidget {
  final String answer;

  AnswerText({this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.fromLTRB(0, 0, 20.0, 10.0),
        child: Text(
          "$answer",
          style:
              TextStyle(color: Color.fromRGBO(253, 0, 129, 1), fontSize: 60.0),
        ));
  }
}

class CalculateText extends StatelessWidget {
  final String calculation;
  CalculateText({this.calculation});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.fromLTRB(0, 0, 20.0, 40.0),
        child: Text(
          "$calculation",
          style:
              TextStyle(color: Color.fromRGBO(98, 89, 121, 1), fontSize: 20.0),
        ));
  }
}
