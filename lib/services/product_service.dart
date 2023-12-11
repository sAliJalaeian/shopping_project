import 'dart:convert';

import 'package:shopping_project/models/shop_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<Product>> fetchPosts() async {
    final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load the data :)");
    }
  }
}
