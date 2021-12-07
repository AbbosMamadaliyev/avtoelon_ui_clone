import 'package:flutter/material.dart';

class Characterss extends StatelessWidget {
  const Characterss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
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
