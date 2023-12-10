import 'package:flutter/material.dart';

class IphonePage extends StatelessWidget {
  const IphonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "IPhone Page",
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