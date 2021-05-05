/*
* Used to make animated color, size, border etc...
*
* require :
*     just duration
*     and curve : to specify the animation
*
*/

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetTable extends StatefulWidget {
  @override
  _WidgetTableState createState() => _WidgetTableState();
}

class _WidgetTableState extends State<WidgetTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Table"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            //border: TableBorder.all(color: Colors.orangeAccent),
            //defaultColumnWidth: FlexColumnWidth(1.0),
            //defaultColumnWidth: FractionColumnWidth(.1),
            defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width / 4),
            //defaultColumnWidth: IntrinsicColumnWidth(flex: 2),
            //columnWidths: {1: IntrinsicColumnWidth(flex: 2)}, // in case of priority
            children: [
              TableRow(children: [
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color.fromRGBO(
                            255, 171, 64, 0.5), Color.fromRGBO(
                            252, 194, 138, 1.0)]
                      )
                    ),
                  ),
                Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ])
            ],
          ),
        ),
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'table.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
