import 'package:flutter/material.dart';
import 'package:task1_avtoelon/screens/home_page.dart';
import 'package:task1_avtoelon/screens/info_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/info': (context) => const InfoPage(),
      },
      initialRoute: '/',
    );
  }
}
