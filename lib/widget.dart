import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final int index;
  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(index.toString()),
      title: Text("${car.brand}: ${car.model}"),
      subtitle: Text("Car color: ${car.color}"),
      //subtitle: Text(car.color),

      trailing: Text("Total price: ${car.price.toString()}"),
    );
  }
}
