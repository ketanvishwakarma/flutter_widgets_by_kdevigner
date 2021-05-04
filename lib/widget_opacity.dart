/*
* Used to set widget visibility
*
* require :
*     Opacity : 0.0 hide ; 1.0 full visible
*    {below only for AnimatedOpacity}
*     duration
*     and curve : to specify the animation
*
*/

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetOpacity extends StatefulWidget {
  @override
  _WidgetOpacityState createState() => _WidgetOpacityState();
}

class _WidgetOpacityState extends State<WidgetOpacity> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Opacity Widget")),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Wrap(spacing: 20, children: [
              Opacity(
                opacity: _opacity,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Opacity(
                opacity: _opacity,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              /*Text(
                'Changing Text Size Also!!',
                style: TextStyle(fontSize: 20),
              ),*/
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 5),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('This one is AnimatedOpacity with 5 seconds'),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_opacity > 0.0)
                        _opacity = 0.0;
                      else
                        _opacity = 1.0;
                    });
                  },
                  child: Text('Change'))
            ]),
          ),
        ),
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'opacity.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
