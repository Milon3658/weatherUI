import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/widget/TempCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
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
