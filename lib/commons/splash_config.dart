import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final Widget? image;
  final CircularLoader? circularLoader;
  final Color backgroundColor;
  final int durationInSec;
  final int durationInMills;
  final Widget navigateTo;

  const SplashScreen({Key? key,
    this.image,
    this.circularLoader,
    this.durationInSec = 0,
    this.durationInMills = 0,
    this.backgroundColor = Colors.white,
    required this.navigateTo,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) => Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Container(color: widget.backgroundColor),
      widget.image ?? const SizedBox.shrink(),
      widget.circularLoader ?? const SizedBox.shrink(),
    ]
  );

  start() async {    
    final duration = (widget.durationInMills != 0 && widget.durationInSec == 0)
      ? Duration(milliseconds: widget.durationInMills)
      : Duration(seconds: widget.durationInSec);

    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.navigateTo),
      );
    });
  }
}

class CircularLoader extends StatelessWidget {
  final Color color;
  final double loaderSize;
  final double loaderWidth;
  final double? top;
  final double? end;
  final double? bottom;
  final double? start;

  const CircularLoader({
    Key? key,
    this.color = Colors.white,
    this.loaderSize = 30.0,
    this.loaderWidth = 4.0,
    this.top,
    this.end,
    this.bottom,
    this.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
    top: top,
    bottom: bottom,
    left: start,
    right: end,
    child: SizedBox(
      width: loaderSize,
      height: loaderSize,
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: loaderWidth,
      ),
    ),
  );
}