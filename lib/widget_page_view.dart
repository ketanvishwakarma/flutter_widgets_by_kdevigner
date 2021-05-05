/*
* PageView used to make scrollable list of full screen page.
* so we can make different new screens and make it scrollable by PageView
*
* first needed pageController to controller page
* then pageView that has children and scroll directions
* */

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';

class WidgetPageView extends StatefulWidget {
  @override
  _WidgetPageViewState createState() => _WidgetPageViewState();
}

class _WidgetPageViewState extends State<WidgetPageView> {
  PageController _pageController;
  PageView _pageView;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
    );

    _pageView = PageView(
      controller: _pageController,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.vertical,
      children: [
        Container(
            color: Colors.lightBlueAccent, child: Center(child: Text('Page1'))),
        Container(
            color: Colors.deepOrangeAccent, child: Center(child: Text('Page2'))),
        Container(
            color: Colors.pinkAccent, child: Center(child: Text('Page3'))),
        Container(
            color: Colors.greenAccent, child: Center(child: Text('Page4'))),
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageView'),
        ),
        body: _pageView,
        floatingActionButton: Link(
            target: LinkTarget.self,
            uri: Uri.parse(baseUrl + 'page_view.dart'),
            builder: (context, followLink) {
              return FloatingActionButton(
                  onPressed: () {
                    followLink();
                  },
                  child: Icon(Icons.code));
            }));
  }
}
