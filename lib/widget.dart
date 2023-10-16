import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final index;

  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 200, 227, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
          isThreeLine: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    car.brand,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    " ${car.model}",
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              )
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Car color: ${car.color}, available: ${car.availability}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 52, 51, 51),
                ),
              ),
            ],
          ),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("№${index.toString()}",
                  style: const TextStyle(color: Color.fromARGB(255, 1, 31, 56), fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Price: ${car.price.toString()}",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          )),
    );
  }
}
