import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_project/bloc/product_bloc.dart';
import 'package:shopping_project/screens/detailed_product.dart';

class WatchesPage extends StatelessWidget {
  const WatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductFetchFailedState) {
          return const Center(
            child: Text("Error"),
          );
        }
        if (state is ProductFetchSuccessState) {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailProduct(
                      imageAddress: state.products[index].image,
                      title: state.products[index].title,
                      description: state.products[index].description,
                      price: state.products[index].price,
                    ),
                  )
                ),
                child: SizedBox(
                  height: 460,
                  width: 200,
                  child: Column(
                    children: [
                      /*Image.network(
                        state.products[index].image,
                        height: 270,
                        width: 200,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.medium,
                      ),*/
                      CachedNetworkImage(
                        imageUrl: state.products[index].image,
                        height: 220,
                        width: 200,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.products[index].title.substring(0, 18),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              state.products[index].description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "PRICE :${state.products[index].price.toString()}",
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                      /**/
                    ],
                  ),
                ),
              );
            },
          );
        }
        if (state is ProductFetchLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
