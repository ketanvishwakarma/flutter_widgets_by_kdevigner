/*
* Used to make hide and pin appbar as we set...
*
* require :
*     must be as a child of CustomScrollView Then it's attributes :
*           slivers will have children first SliverAppBar, then List..
*     SliverAppBar : pin, floating, expandedHeight,
*                    flexibleSpace : FlexibleSpaceBar (to place what we want to show in appbar)
*
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetSliverAppBar extends StatefulWidget {
  @override
  _WidgetSliverAppBarState createState() => _WidgetSliverAppBarState();
}

class _WidgetSliverAppBarState extends State<WidgetSliverAppBar> {
  int _itemsCount = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
             title: Text("SliverAppBar Widget"),
              pinned: false, // to make it pin or not
              floating: true, // to make visible soon as we scroll down
              expandedHeight: 150, //For It's height when you scroll down
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                             Color.fromRGBO(200, 100, 100, .2),
                            Color.fromRGBO(200, 100, 100, 1)
                          ],
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(alignment: Alignment.bottomCenter,child: Text("Simple Gradient Container",)),
                  ),
                ),
              ),
            ),
            SliverAnimatedList(
              initialItemCount: _itemsCount,
              itemBuilder: (context, index, animation) {
                return Container(
                  height: 100,
                  child: Center(child: Text(index.toString())),
                );
              },
            ),
          ],
        ),
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'sliver_appbar.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
