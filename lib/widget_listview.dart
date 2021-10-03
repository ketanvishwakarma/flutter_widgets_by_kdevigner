/*
* Used to make Dynamic ListView
*
* require :
*     just the incrementing value
*
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetListViewBuilder extends StatefulWidget {
  @override
  _WidgetListViewBuilderState createState() => _WidgetListViewBuilderState();
}

class _WidgetListViewBuilderState extends State<WidgetListViewBuilder> {
  int count = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: count,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    child: Center(
                        child: Text(
                      "${index + 1}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 171, 64, 0.5),
                              Color.fromRGBO(252, 194, 138, 1.0)
                            ])),
                  ),
                );
              },
            )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    count++;
                  });
                }),
            Link(
                target: LinkTarget.self,
                uri: Uri.parse(baseUrl + 'listview.dart'),
                builder: (context, followLink) {
                  return FloatingActionButton(
                      onPressed: () {
                        followLink();
                      },
                      child: Icon(Icons.code));
                }),
          ],
        ));
  }
}
