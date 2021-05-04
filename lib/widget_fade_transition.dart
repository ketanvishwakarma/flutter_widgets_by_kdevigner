import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'main.dart';


class MadeFadeIn extends StatefulWidget {
  final Widget child;

  const MadeFadeIn({Key key, this.child}) : super(key: key);

  @override
  _MadeFadeInState createState() => _MadeFadeInState();
}

class _MadeFadeInState extends State<MadeFadeIn>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    /*_animation = Tween(
        begin: 0.0,
        end: 6.0
    ).animate(_controller);*/
    _animation = CurvedAnimation(
      curve: Curves.easeInExpo,
      parent: _controller,
    );
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
    return FadeTransition(opacity: _animation, child: widget.child,);
  }
}


class WidgetFadeTransition extends StatefulWidget {
  @override
  _WidgetFadeTransitionState createState() => _WidgetFadeTransitionState();
}

class _WidgetFadeTransitionState extends State<WidgetFadeTransition> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("FadeTransition Widget")),
        body: Container(
          child: MadeFadeIn(child: Center(child: Text("Ketan Vishwakarma")),),
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
