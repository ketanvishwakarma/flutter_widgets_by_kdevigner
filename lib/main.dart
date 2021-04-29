import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'widget_link.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets | KDevigner',
      debugShowCheckedModeBanner: false,

      /* light theme settings */
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        brightness: Brightness.light,
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.white54,
        scaffoldBackgroundColor: Colors.white,

      ),

      /* Dark theme settings */
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
        scaffoldBackgroundColor: Color(0xFF131313),

      ),

      /* ThemeMode.system to follow system theme,
         ThemeMode.light for light theme,
         ThemeMode.dark for dark theme */
      themeMode: ThemeMode.system,

      home: MyHomePage(title: 'Flutter Widgets | KDevigner'),
    );
  }
}


String baseUrl = 'https://github.com/ketanvishwakarma/flutter_widgets_by_kdevigner/blob/main/lib/widget_';

List _listOfWidgets = ['Link'];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _showWidget(String name) {
    if (name == 'Link')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetLink(),
          ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('List of Widgets')),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Text(
                'oneTap for example\nlongPress for code',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10, left: 10),
                child: SingleChildScrollView(
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: _listOfWidgets
                        .map(
                          (e) => Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse('https://www.youtube.com/watch?v=ujlqRTJg48g'),
                              builder: (BuildContext context,
                                  Future<void> Function() followLink) {
                                return ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(10),
                                        elevation: 10),
                                    onLongPress: () {
                                      followLink();
                                    },
                                    onPressed: () {
                                      _showWidget(e);
                                    },
                                    child: Text(
                                      e,
                                      style: TextStyle(fontSize: 20),
                                    ));
                              },
                            ),
                          ),
                        )
                        .toList()
                        .cast<Widget>(),
                  ),
                )),
          ],
        )));
  }
}
