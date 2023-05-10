import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:async';

@RoutePage(name: 'splash')
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => AnimatedSplash();
}

class AnimatedSplash extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimatedSplash() {
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _logoStyle = FlutterLogoStyle.horizontal;
      });
    });
  }

  bool _visible = true;
  double? _scale;
  AnimationController? _controller;
  FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller!.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Animated Splash by ',
              style: TextStyle(color: Colors.white, fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: 'Med Redha',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.blue])),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: FlutterLogo(
                    size: 300.0,
                    style: _logoStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTapDown: _onTapDown,
                onTapUp: _onTapUp,
                child: Transform.scale(
                  scale: _scale,
                  child: _animatedButtonUI,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
        margin: const EdgeInsets.only(top: 15.0),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.blue,
          boxShadow: const [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 30.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Hide/Show',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller?.forward();
    setState(() {
      _visible = !_visible;
    });
  }

  void _onTapUp(TapUpDetails details) {
    _controller?.reverse();
  }
}
