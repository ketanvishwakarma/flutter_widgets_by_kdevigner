/*
* Uses a package url_launcher
* Used to open a url in the app itself or it's native app
*   ex: web page -> chrome, yt video -> yt app
*
* Link widget :
*   uri : where url will be specified ,
*   target : LinkTarget.{something} to specify where to open,
*   builder : which defines it's body ex: button or text etc..
* */

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'main.dart';

class WidgetLink extends StatefulWidget {
  @override
  _WidgetLinkState createState() => _WidgetLinkState();
}

class _WidgetLinkState extends State<WidgetLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Link Widget")),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Link(
                uri: Uri.parse('https://twitter.com/KDevigner/'),
                target: LinkTarget.blank,
                builder: (context, followLink) {
                  return ElevatedButton(
                      onPressed: () {
                        followLink();
                      },
                      child: Text('My Twitter Profile'));
                },
              ),
              Link(
                uri: Uri.parse('https://www.youtube.com/watch?v=kMoWwAH24tE'),
                target: LinkTarget.blank,
                builder: (context, followLink) {
                  return ElevatedButton(
                      onPressed: () {
                        followLink();
                      },
                      child: Text('Music Youtube Video'));
                },
              ),
              Link(
                uri: Uri.parse('https://www.youtube.com/watch?v=kMoWwAH24tE'),
                target: LinkTarget.self,
                builder: (context, followLink) {
                  return ElevatedButton(
                      onPressed: () {
                        followLink();
                      },
                      child: Text('Youtube Video with LinkTarget.self '));
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'link.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
