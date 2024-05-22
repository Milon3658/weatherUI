import 'package:flutter/material.dart';
import 'package:weather/widget/TempCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/w.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.sunny,
                            color: Colors.yellow,
                            size: 100,
                          ),
                          Column(
                            children: [
                              Text(
                                "${now.hour}:${now.minute.toString().padLeft(2, '0')} PM",
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${now.day}/${now.month}/${now.year}",
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  TempCard(
                    title: "Temperature",
                    subtitle: "25°C",
                    icon: Icons.thermostat,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TempCard(
                    title: "Humidity",
                    subtitle: "74%",
                    icon: Icons.water_damage,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TempCard(
                    title: "Rain possibility",
                    subtitle: "50%",
                    icon: Icons.cloud,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TempCard(
                    title: "sunny/cloudy",
                    subtitle: "sunny",
                    icon: Icons.wb_sunny,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Refresh"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )));
  }
}
