// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SomeInfo extends StatelessWidget {
  const SomeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildInfoRows('Shahar', 'Toshkent'),
          _buildInfoRows('Kuzov', 'Sedan'),
          _buildInfoRows('Uzatish qutisi', 'Avtomat'),
          _buildInfoRows('Rangi', 'Oq'),
          _buildInfoRows('Kami bor', 'Ha'),
          _buildInfoRows('Dvigatel', '1,5 l, (Benzin)'),
        ],
      ),
    );
  }

  Widget _buildInfoRows(String answer, String question) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              answer,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(child: Text(question)),
        ],
      ),
    );
  }
}
