/*
* Used to make animated color, size, border etc...
*
* require :
*     just duration
*     and curve : to specify the animation
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
  double size = 100;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimatedContainer Widget"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  Random random = new Random();
                  size = random.nextInt(500).toDouble();
                  _color = Color.fromRGBO(random.nextInt(256),
                      random.nextInt(256), random.nextInt(256), 1);
                  _borderRadiusGeometry =
                      BorderRadius.circular(random.nextInt(50).toDouble());
                });
              },
              icon: Icon(Icons.touch_app),
            )
          ],
        ),
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
                decoration: BoxDecoration(
                    color: _color, borderRadius: _borderRadiusGeometry),
              ),
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
