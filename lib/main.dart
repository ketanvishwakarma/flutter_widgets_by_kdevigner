import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets | KDevigner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Widgets | KDevigner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _listOfWidgets = [
    'SafeArea',
    'Expanded',
    'SafeArea',
    'Expanded',
    'SafeArea',
    'Expanded',
    'SafeArea',
    'Expanded',
    'SafeArea',
    'Expanded',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: _listOfWidgets
                        .map(
                          (e) => Container(
                            padding: EdgeInsets.all(20),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  'https://img.youtube.com/vi/lkF0TQJO0bA/maxresdefault.jpg'),
                              builder: (BuildContext context,
                                  Future<void> Function() followLink) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(20), elevation: 10),
                                  onLongPress: () {},
                                  onPressed: () {
                                    followLink();
                                  },
                                  child: Text(e,style: TextStyle(fontSize: 20),)
                                );
                              },
                            ),
                          ),
                        )
                        .toList()
                        .cast<Widget>(),
                  ),
                ))));
  }
}
