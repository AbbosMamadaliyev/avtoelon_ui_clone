// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CostAndInfo extends StatefulWidget {
  const CostAndInfo({Key? key}) : super(key: key);

  @override
  _CostAndInfoState createState() => _CostAndInfoState();
}

class _CostAndInfoState extends State<CostAndInfo> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String? cost = args['cost'];

    String? color = args['color'];
    String? speed = args['speed'];
    String? model = args['model'];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$ ${cost!}',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            '$model, $color, $speed km/h',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
