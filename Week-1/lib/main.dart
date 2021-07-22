import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String num1 = "";
  String num2 = "";
  String operator="";
  double result=0;
  bool opSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            flex:1,
            child:Container(),
          ),
          Expanded(
            flex:1,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    num1,
                    style: TextStyle(
                      color: Colors.lightBlue[100],
                      fontSize:40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    operator,
                    style: TextStyle(
                      color: Colors.lightBlue[300],
                      fontSize:50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    num2,
                    style: TextStyle(
                      color: Colors.lightBlue[100],
                      fontSize:40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex:1,
            child:Center(
              child: Text(
                "$result",
                style: TextStyle(
                  color: Colors.lightBlue[500],
                  fontWeight:FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Expanded(
            flex:1,
            child:Container(),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1 = "";
                        num2 = "";
                        operator = "";
                        opSet = false;
                        result = 0;
                      });
                    },
                    child: Text(
                      "CLEAR ALL",
                      style: TextStyle(
                        color: Colors.lightBlue[800],
                        fontSize:28,
                        fontWeight:FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[100],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1.substring(0, num1.length - 1);
                        } else {
                          num2 = num2.substring(0, num2.length - 1);
                        }
                      });
                    },
                    child: Icon(
                      Icons.backspace,
                      color: Colors.lightBlue[800],
                      size:28,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[100],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "7";
                        } else {
                          num2 = num2 + "7";
                        }
                      });
                    },
                    child: Text(
                      "7",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "8";
                        } else {
                          num2 = num2 + "8";
                        }
                      });
                    },
                    child: Text(
                      "8",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "9";
                        } else {
                          num2 = num2 + "9";
                        }
                      });
                    },
                    child: Text(
                      "9",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        operator = "+";
                        opSet = true;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize:28,
                        fontWeight:FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "4";
                        } else {
                          num2 = num2 + "4";
                        }
                      });
                    },
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "5";
                        } else {
                          num2 = num2 + "5";
                        }
                      });
                    },
                    child: Text(
                      "5",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "6";
                        } else {
                          num2 = num2 + "6";
                        }
                      });
                    },
                    child: Text(
                      "6",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        operator = "-";
                        opSet = true;
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize:28,
                        fontWeight:FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "1";
                        } else {
                          num2 = num2 + "1";
                        }
                      });
                    },
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "2";
                        } else {
                          num2 = num2 + "2";
                        }
                      });
                    },
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "3";
                        } else {
                          num2 = num2 + "3";
                        }
                      });
                    },
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        operator = "*";
                        opSet = true;
                      });
                    },
                    child: Text(
                      "*",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize:28,
                        fontWeight:FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + "0";
                        } else {
                          num2 = num2 + "0";
                        }
                      });
                    },
                    child: Text(
                      "0",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (opSet == false) {
                          num1 = num1 + ".";
                        } else {
                          num2 = num2 + ".";
                        }
                      });
                    },
                    child: Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        double a = double.parse(num1);
                        double b = double.parse(num2);
                        switch (operator) {
                          case ("+"):
                            result = a + b;
                            break;
                          case ("-"):
                            result = a - b;
                            break;
                          case ("*"):
                            result = a * b;
                            break;
                          case ("/"):
                            result = a / b;
                            break;
                        }
                      });
                    },
                    child: Text(
                      "=",
                      style: TextStyle(
                        color: Colors.lightBlue[800],
                        fontSize:28,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[100],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        operator = "/";
                        opSet = true;
                      });
                    },
                    child: Text(
                      "/",
                      style: TextStyle(
                        color: Colors.lightBlue[50],
                        fontSize:28,
                        fontWeight:FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
