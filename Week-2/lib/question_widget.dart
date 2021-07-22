import 'package:flutter/material.dart';
import "question_list.dart";

class QuestionWidget extends StatefulWidget {
  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int index = 0;
  List<Icon> icons = [];
  void onPress(bool answer) {
    setState(() {
      if (questions[index].answer == answer) {
        icons.add(Icon(
          Icons.done_all,
          color:Colors.green,
          size:50,
        ));
      } else {
        icons.add(Icon(
          Icons.close,
          color:Colors.red,
          size:50,
        ));
      }
      index++;
      if (index == questions.length) {
        index = 0;
        icons.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  questions[index].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  onPress(true);
                },
                icon: Icon(
                  Icons.done_all,
                  color: Colors.white,
                  size: 40,
                ),
                label: Text("True",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  onPress(false);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 40,
                ),
                label: Text("False",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: icons,
            ),
          ),
        ],
      ),
    );
  }
}
