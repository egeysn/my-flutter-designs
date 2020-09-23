import 'package:flutter/material.dart';
import 'package:mytestapp/TODO/todo.dart';

import 'detailscreen.dart';

class TodoViewScreen extends StatefulWidget {
  TodoViewScreen({Key key}) : super(key: key);

  @override
  _TodoViewScreenState createState() => _TodoViewScreenState();
}

class _TodoViewScreenState extends State<TodoViewScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                        settings: RouteSettings(
                          arguments: todos[index],
                        )),
                  );
                },
                title: Text(todos[index].title),
              );
            }));
  }
}

final todos = List<Todo>.generate(
  20,
  (i) => Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);
