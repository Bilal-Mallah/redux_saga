import 'package:flutter/material.dart';
import 'package:task_redux_saga/Model/View_model.dart';
import 'package:task_redux_saga/Model/data.dart';

class Display extends StatelessWidget {
  final ViewModel model;
  const Display({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: model.data
          .map((Data d) => Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Quistion:  ",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          (d.quistion ?? "") + "?",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Answer:  ",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          d.answer ?? "" + "?",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
