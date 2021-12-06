// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task1_avtoelon/screens/bodies/components/cost_and_info.dart';
import 'package:task1_avtoelon/screens/bodies/components/load_images.dart';

import 'components/some_info.dart';

class InfoPageBody extends StatefulWidget {
  const InfoPageBody({Key? key}) : super(key: key);

  @override
  _InfoPageBodyState createState() => _InfoPageBodyState();
}

class _InfoPageBodyState extends State<InfoPageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoadImageCars(),
          CostAndInfo(),
          _divider(),
          SomeInfo(),
          _divider(),
          Characters(),
        ],
      ),
    );
  }

  Container _divider() {
    return Container(
      height: 10,
      color: Colors.grey[350],
    );
  }
}

class Characters extends StatelessWidget {
  const Characters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Opsiya va xarakteristikalar',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Yengil qotishmali disklar. Tumanga qarshi chiroqlar, tashqi chiroq joyida............'
            'AudioSitema, Butun elektr qismlar joyida.'
            'Yemaagn..Qirilmagan.............\nIshxonaga xaydalgan xolos)))',
          ),
        ],
      ),
    );
  }
}
