import 'package:flutter/material.dart';

class GridViewScreenOrientation extends StatelessWidget {
  const GridViewScreenOrientation({Key key, @required this.title})
      : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 4 : 8,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  "Item $index",
                  style: Theme.of(context).textTheme.headline1,
                ),
              );
            }));
      }),
    );
  }
}
