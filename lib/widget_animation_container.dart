/*
* Used to make simple opacity transition animation
* require :
*     class defined with SingleTickerProviderStateMixin
*     opacity : it's define visibility of the widget so it's should be in the changing mode so it will going to change opacity from 0 to high.
*             we ues curved animation and it's parent uses animation controller;
*             now animation controller uses SingleTickerProviderStateMixin for it's attribute 'vsync' : we set to 'this',
*                   and duration.
*             animation controller should be define in the variable because it's must be set  _controller.forward(); when app is running.
*
*     child: the widget we going to use
*
*/


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetAnimatedContainer extends StatefulWidget {
  @override
  _WidgetAnimatedContainerState createState() =>
      _WidgetAnimatedContainerState();
}

class _WidgetAnimatedContainerState extends State<WidgetAnimatedContainer> {

  Color _color = Colors.white;
  double size = 100, _fontSize;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("AnimatedContainer Widget")),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Wrap(spacing: 20, children: [
              AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                padding: EdgeInsets.all(20),
                duration: Duration(seconds: 2),
                width: size,
                height: size,
                decoration: BoxDecoration(color: _color,borderRadius: _borderRadiusGeometry),
              ),
              Text('Changing Text Size Also!!',style: TextStyle(fontSize: _fontSize),),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Random random = new Random();
                      size = random.nextInt(500) as double;
                      _fontSize = random.nextInt(50).toDouble();
                      _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
                      _borderRadiusGeometry = BorderRadius.circular(random.nextInt(50).toDouble());
                    });
                  },
                  child: Text('Change'))
            ]),
          ),
        ),
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'animation_container.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
