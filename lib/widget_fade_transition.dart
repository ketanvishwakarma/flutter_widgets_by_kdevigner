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

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetFadeTransition extends StatefulWidget {
  @override
  _WidgetFadeTransitionState createState() => _WidgetFadeTransitionState();
}

class _WidgetFadeTransitionState extends State<WidgetFadeTransition>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
        appBar: AppBar(title: Text("FadeTransition Widget")),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Wrap(
            spacing: 20,
            children: [
              FadeTransition(
                opacity:
                    CurvedAnimation(parent: _controller, curve: Curves.easeInExpo),
                child: Text('Curves.easeInExpo',),
              ),
              FadeTransition(
                opacity: CurvedAnimation(
                    parent: _controller, curve: Curves.easeIn),
                child: Text('Curves.easeIn'),
              ),
              FadeTransition(
                opacity:
                CurvedAnimation(parent: _controller, curve: Curves.linear),
                child: Text('Curves.linear'),
              ),
              FadeTransition(
                opacity: CurvedAnimation(
                    parent: _controller, curve: Curves.easeInCirc),
                child: Text('Curves.easeInCirc'),
              ),
              FadeTransition(
                opacity: CurvedAnimation(
                    parent: _controller, curve: Curves.easeInCirc),
                child: Text('Curves.easeInCirc'),
              ),
            ],
          ),
        ),
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'fade_transition.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
