class Car {
  String models;
  String color;
  int cost;
  int maxSpeed;
  String imageUrl;

  Car({
    required this.models,
    required this.color,
    required this.cost,
    required this.maxSpeed,
    required this.imageUrl,
  });

  static List<Car> carList = [
    Car(
        models: 'Daewoo Gentra',
        color: 'White',
        cost: 7500,
        maxSpeed: 211,
        imageUrl: 'assets/images/gentra.jpg'),
    Car(
      models: 'Damas',
      color: 'White',
      cost: 5500,
      maxSpeed: 180,
      imageUrl: 'assets/images/damas.jpg',
    ),
    Car(
      models: 'Chevrolet Spark',
      color: 'Green',
      cost: 6500,
      maxSpeed: 220,
      imageUrl: 'assets/images/spark.jpg',
    ),
    Car(
        models: 'Nexia R3',
        color: 'Blue',
        cost: 8500,
        maxSpeed: 220,
        imageUrl: 'assets/images/nexi3.jpg'),
    Car(
        models: 'Nexia 2',
        color: 'White',
        cost: 1500,
        maxSpeed: 211,
        imageUrl: 'assets/images/nexia2.jpg'),
  ];
}
