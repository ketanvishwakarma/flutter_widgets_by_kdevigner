import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets_by_kdevigner/widget_animation_container.dart';
import 'package:flutter_widgets_by_kdevigner/widget_fade_transition.dart';
import 'package:flutter_widgets_by_kdevigner/widget_listview.dart';
import 'package:flutter_widgets_by_kdevigner/widget_opacity.dart';
import 'package:flutter_widgets_by_kdevigner/widget_page_view.dart';
import 'package:flutter_widgets_by_kdevigner/widget_sliver_appbar.dart';
import 'package:flutter_widgets_by_kdevigner/widget_table.dart';

import 'widget_link.dart';

void main() {
  runApp(MyApp());
}

bool darkTheme = false;

_MyAppState _myTheme = _MyAppState();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with ChangeNotifier {
  ThemeMode currentTheme() {
    return darkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }

  @override
  void initState() {
    _myTheme.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets | KDevigner',
      debugShowCheckedModeBanner: false,
      /* light theme settings */
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 5,
          shadowColor: Colors.black26,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 70),
              padding: EdgeInsets.all(10),
              elevation: 0,
              animationDuration: Duration(seconds: 10)),
        ),
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
        appBarTheme: AppBarTheme(
          elevation: 5,
          shadowColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 70),
              padding: EdgeInsets.all(10),
              elevation: 0,
              animationDuration: Duration(seconds: 10)),
        ),
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
        scaffoldBackgroundColor: Colors.black,
      ),

      /* ThemeMode.system to follow system theme,
         ThemeMode.light for light theme,
         ThemeMode.dark for dark theme */
      themeMode: _myTheme.currentTheme(),
      home: MyHomePage(title: 'Flutter Widgets | KDevigner'),
    );
  }
}

String baseUrl =
    'https://github.com/ketanvishwakarma/flutter_widgets_by_kdevigner/blob/main/lib/widget_';

List _listOfWidgets = [
  'Link',
  'FadeTransition',
  'AnimatedContainer',
  'Opacity',
  'PageView',
  'Table',
  'SliverAppBar',
  'Listview Builder',
];

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
    if (name == 'FadeTransition')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetFadeTransition(),
          ));
    if (name == 'AnimatedContainer')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetAnimatedContainer(),
          ));
    if (name == 'Opacity')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetOpacity(),
          ));
    if (name == 'PageView')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetPageView(),
          ));
    if (name == 'Table')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetTable(),
          ));
    if (name == 'SliverAppBar')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetSliverAppBar(),
          ));
    if (name == 'Listview Builder')
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetListViewBuilder(),
          ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: darkTheme ? Brightness.dark : Brightness.light,
        statusBarColor: darkTheme ? Colors.black : Colors.white));
    return Scaffold(
        appBar: AppBar(
          title: Text('List of Widgets'),
          actions: [
            IconButton(
              icon: Icon(Icons.lightbulb),
              onPressed: () {
                setState(() {
                  _myTheme.switchTheme();
                  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                      statusBarIconBrightness:
                          darkTheme ? Brightness.dark : Brightness.light,
                      statusBarColor: darkTheme ? Colors.black : Colors.white));
                });
              },
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10, left: 10),
                child: SingleChildScrollView(
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: _listOfWidgets
                        .map(
                          (e) => Container(
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                _showWidget(e);
                              },
                              child: Text(
                                e,
                                style: TextStyle(fontSize: 20),
                              ),
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
