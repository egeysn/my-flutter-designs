import "package:flutter/material.dart";

import '../todo.dart';

class DetailScreen extends StatelessWidget {
  

  const DetailScreen({Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(todo.description),
          ),
        ));
  }
}
