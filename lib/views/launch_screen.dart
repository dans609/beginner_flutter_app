import 'package:flutter_svg/flutter_svg.dart';
import 'package:submission_bmafp/commons/splash_config.dart';
import 'package:submission_bmafp/commons/styles.dart';
import 'package:submission_bmafp/views/home_screen.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SplashScreen(
    navigateTo: HomeScreen(),
    durationInSec: Integer.shortRuntime,
    backgroundColor: AppTheme.colorPrimary,
    image: SvgPicture.asset('images/logo.svg'),
    circularLoader: CircularLoader(
      bottom: Integer.dim50.toDouble(),
      loaderWidth: Integer.shortRuntime.toDouble(),
      loaderSize: Integer.dim20.toDouble(),
      color: AppTheme.redCerise,
    ),
  );
}