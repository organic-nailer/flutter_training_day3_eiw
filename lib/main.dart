import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertrainingday3eiw/example_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everything is Widget',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Everything is Widget"),
        actions: <Widget>[
          IconButton(
            onPressed: () { },
            icon: Icon(Icons.search),
          )
        ],
      ),
      backgroundColor: Color(0xffDEDEDE),
      body: StaggeredGridView.countBuilder(
          crossAxisCount: 3,
          itemCount:  10,
          itemBuilder: (context, index) {
            return ExampleCard(
              info: exampleInfo[index],
            );
          },
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
      )
    );
  }
}

class Info {
  final String title;
  final String summary;
  final String image;

  Info(this.title, this.summary, this.image);
}

var exampleInfo = <Info>[
  Info("Appbar", "A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.", "image/1.png"),
  Info("FlutterLogo", "The Flutter logo, in widget form. This widget respects the IconTheme.", "image/2.png"),
  Info("Icon", "A Material Design icon.", "image/3.png"),
  Info("RaisedButton", "A Material Design raised button. A raised button consists of a rectangular piece of material that hovers over the interface.", "image/4.png"),
  Info("Scaffold", "Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.", "image/5.png"),
  Info("BottomNavigationBar", "Bottom navigation bars make it easy to explore and switch between top-level views in a single tap.", "image/6.png"),
  Info("Drawer", "A Material Design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.", "image/7.png"),
  Info("TabBar", "A Material Design widget that displays a horizontal row of tabs.", "image/8.png"),
  Info("FloatingActionButton", "A floating action button is a circular icon button that hovers over content to promote a primary action in the application.", "image/9.png"),
  Info("PopupMenuButton", "Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.", "image/10.png"),
];
