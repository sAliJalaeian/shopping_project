import 'package:flutter/material.dart';

class MacBookPage extends StatelessWidget {
  const MacBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Macbook Page",
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