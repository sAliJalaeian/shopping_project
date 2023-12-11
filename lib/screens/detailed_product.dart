import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final String imageAddress;
  final String title, description;
  final double price;

  const DetailProduct({
    super.key,
    required this.imageAddress,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: CachedNetworkImage(
              imageUrl: imageAddress,
              height: 310,
              width: 300,
              fit: BoxFit.fill,
              placeholder: (context, url) => const SizedBox(
                height: 200,
                width: 200,
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            /*Image.network(
              imageAddress,
              height: 350,
              width: 300,
              fit: BoxFit.fill,
            ),*/
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title.substring(0, 15),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Price : $price",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  height: 22,
                  width: 22,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 52,
              width: 300,
              color: Colors.black,
              child: const Center(                
                child: Text(
                  "Procced to Buy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,                    
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 52,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 240, 240),                
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
              child: const Center(                
                child: Text(
                  "Add To Cart",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,                    
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
