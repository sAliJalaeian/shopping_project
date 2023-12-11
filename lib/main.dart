import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_project/bloc/product_bloc.dart';
import 'package:shopping_project/services/product_service.dart';

import 'screens/buttom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProductBloc(productService: ProductService())..add(FetchProductEvent()),
        child: const BottomNav(),
      ),
    );
  }
}
