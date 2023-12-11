import 'package:flutter/material.dart';

class IphonePage extends StatelessWidget {
  const IphonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // children: [
      //   SizedBox(
      //     height: 460,
      //     width: 200,
      //     child: Column(
      //       children: [
      //         Image.network(
      //           state.products[index].image,
      //           height: 270,
      //           width: 200,
      //           fit: BoxFit.fill,
      //           filterQuality: FilterQuality.medium,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 state.products[index].title.substring(0, 18),
      //                 style: const TextStyle(fontWeight: FontWeight.bold),
      //               ),
      //               const SizedBox(
      //                 height: 3,
      //               ),
      //               Text(
      //                 state.products[index].description,
      //                 maxLines: 3,
      //                 overflow: TextOverflow.ellipsis,
      //                 textAlign: TextAlign.justify,
      //               ),
      //               const SizedBox(
      //                 height: 10,
      //               ),
      //               Text(
      //                 "PRICE :${state.products[index].price.toString()}",
      //                 style: const TextStyle(fontWeight: FontWeight.bold),
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ],
    );
  }
}