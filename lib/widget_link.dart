import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

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
        child: Link(
          uri: Uri.parse('https://twitter.com/KDevigner/'),
          target: LinkTarget.blank,
          builder: (context, followLink) {
            return ElevatedButton(onPressed: () {
              followLink();
            }, child: Text('My Twitter Profile'));
          },
        ),
      ),
    );
  }
}
