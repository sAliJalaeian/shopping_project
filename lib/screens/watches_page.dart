import 'package:flutter/material.dart';

class WatchesPage extends StatelessWidget {
  const WatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Watches Page",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}