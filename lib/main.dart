import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:submission_bmafp/commons/styles.dart';
import 'package:submission_bmafp/views/launch_screen.dart';

void main() {
  runApp(const MovieCatalog());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppTheme.colorPrimary,
  ));
}

class MovieCatalog extends StatelessWidget {
  const MovieCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: AppTheme.appName,
    theme: theme(),
    home: const LaunchScreen(),
    debugShowCheckedModeBanner: false,
  );

  theme() => ThemeData(
    fontFamily: AppTheme.interFont,
    primaryColor: AppTheme.colorPrimary,
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      color: Colors.grey.shade200,
      shadowColor: Colors.black,
      elevation: Integer.int7.toDouble(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Integer.dim20.toDouble(),
        ),
      ),
    ),
  );
}