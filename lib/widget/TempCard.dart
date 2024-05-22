import 'package:flutter/material.dart';

class TempCard extends StatelessWidget {

  String title;
  String subtitle;
  IconData icon;

  TempCard({super.key, required this.title, required this.subtitle, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

// ListTile(
// leading: const Icon(
// Icons.cloud,
// color: Colors.white,
// size: 20,
// ),
// title: Text(
// title,
// style: const TextStyle(
// fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
// ),
// subtitle: Text(
// subtitle,
// style: const TextStyle(
// fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
// ),
// ),