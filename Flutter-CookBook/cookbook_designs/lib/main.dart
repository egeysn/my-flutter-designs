import 'package:cookbook_designs/screens/gridview.dart';
import 'package:cookbook_designs/screens/tabs_screen.dart';
import 'package:cookbook_designs/screens/theme_screen.dart';
import 'package:flutter/material.dart';

import 'screens/navigation_drawer.dart';
import 'screens/snackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: "Lobster",
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main title"),
      ),
      body: _buildListViewItems(context),
    );
  }

  ListView _buildListViewItems(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        CustomListTile(
          title: "Drawer Screen",
          onClicked: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DrawerScreen(
                          title: "Drawer Screen",
                        )));
          },
        ),
        CustomListTile(
          title: "Display a Snackbar",
          onClicked: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SnackBarScreen(
                          title: "SnackBar Screen",
                        )));
          },
        ),
        CustomListTile(
          title: "GridView and Orientation Screen(Portrait)",
          onClicked: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GridViewScreenOrientation(
                          title: "GridView and Orientation Screen(Portrait)",
                        )));
          },
        ),
          CustomListTile(
          title: "Using Theme",
          onClicked: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ThemeScreen(
                          title: "Using Theme",
                        )));
          },
        ),
          CustomListTile(
          title: "Using Theme",
          onClicked: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TabBarDemo(
                          title: "Using Theme",
                        )));
          },
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key key,
    @required this.onClicked,
    @required this.title,
  }) : super(key: key);
  final Function onClicked;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onClicked,
      selected: true,
      title: Text(
        "$title",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.directions_railway_rounded),
    );
  }
}
