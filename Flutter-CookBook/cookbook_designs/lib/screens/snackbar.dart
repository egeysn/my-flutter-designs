import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key key, @required this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Using the Lobster font from the awesome_package',
            style: TextStyle(
              fontSize: 35,
              fontFamily: "Lobster",
            ),
          ),
          RaisedButton(
            child: Text("Show SnackBar"),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text("Yay A SnackBar"),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );

              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
