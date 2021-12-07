// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'bodies/home_page_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: HomePageBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Avtoelon'),
      centerTitle: false,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        IconButton(
            onPressed: () {
              _showDialog();
            },
            icon: Icon(Icons.monetization_on_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ],
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('No money no honey )))'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Ok'),
              ),
            ],
          );
        });
  }
}
