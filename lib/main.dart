import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'tabs.dart';

void main() => runApp(MyApp ());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // status bar color
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark
      ));
       SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationTabs(),
    );
  }
}



