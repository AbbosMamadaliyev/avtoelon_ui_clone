import 'package:flutter/material.dart';
import 'package:task1_avtoelon/models/car_model.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/info', arguments: {
                'image': Car.carList[index].imageUrl,
                'cost': Car.carList[index].cost.toString(),
                'speed': Car.carList[index].maxSpeed.toString(),
                'color': Car.carList[index].color,
                'model': Car.carList[index].models,
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Image.asset(Car.carList[index].imageUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 18,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Car.carList[index].models,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${Car.carList[index].color}, ${Car.carList[index].maxSpeed} km/h, \$ ${Car.carList[index].cost}',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
          );
        },
        itemCount: Car.carList.length,
      ),
    );
  }
}
