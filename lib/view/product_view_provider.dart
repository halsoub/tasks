import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/view/details.dart';

import '../models/product.dart';
import '../provider/product_provder.dart';

class ProductViewWidget extends StatefulWidget {
  const ProductViewWidget({super.key});

  @override
  State<ProductViewWidget> createState() => _ProductViewWidgetState();
}

class _ProductViewWidgetState extends State<ProductViewWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductProvider>(context, listen: false).fetchAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product View Widget"),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
          // fixed
          if (productProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (productProvider.errorMessage != null) {
            return Center(child: Text(productProvider.errorMessage!));
          } else if (productProvider.products.isEmpty) {
            return const Center(child: Text("No products available"));
          }

          return ListView.builder(
            itemCount: productProvider.products.length,
            itemBuilder: (context, index) {
              Product product = productProvider.products[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Image.network(
                    product.image ?? "",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(product.title ?? "No Title"),
                  subtitle: Text("\$${product.price?.toStringAsFixed(2)}"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 20),
                      Text(product.rating?.rate?.toStringAsFixed(1) ?? "N/A"),
                    ],
                  ),
                  
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(product: product),
                        ));
                  },
                ),
                
              );
            },
          );
        },
      ),
    );
  }
}
