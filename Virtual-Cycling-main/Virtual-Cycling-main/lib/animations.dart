import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';
import 'package:virtual_cycling_app/pages/login_page.dart';

class Animations extends StatefulWidget {
  @override
  State<Animations> createState() => animationsState();
}

class animationsState extends State<Animations> with TickerProviderStateMixin{
  bool value1 = true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        behaviour: RacingLinesBehaviour(),
        vsync: this,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'A New Cycling Experience For You', 
                        textStyle: TextStyle(fontStyle: FontStyle.italic), 
                        duration: const Duration(milliseconds: 2000)
                      ),
                    ],
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

/* Route _CreateRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Homepage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return FadeTransition(
        opacity: animation.drive(tween as Animatable<double>),
        child: child,
      );
    },
  );
} */