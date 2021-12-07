// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'components_in_info_page/characters.dart';
import 'components_in_info_page/cost_and_info.dart';
import 'components_in_info_page/load_images.dart';
import 'components_in_info_page/some_info.dart';

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
          Characterss(),
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
