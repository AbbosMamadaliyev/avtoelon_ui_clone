import 'package:flutter/material.dart';

import 'bodies/info_page_body.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String? speed = args['speed'];
    String? model = args['model'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$model, $speed km/h',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: const InfoPageBody(),
    );
  }
}
