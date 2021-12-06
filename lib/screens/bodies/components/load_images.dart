import 'package:flutter/material.dart';

class LoadImageCars extends StatefulWidget {
  const LoadImageCars({Key? key}) : super(key: key);

  @override
  _LoadImageCarsState createState() => _LoadImageCarsState();
}

class _LoadImageCarsState extends State<LoadImageCars> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String? image = args['image'];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      height: 250,
      child: Image.asset(image!),
    );
  }
}
