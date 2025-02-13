import 'package:flutter/material.dart';
import 'package:tasks/models/product.dart';

class Details extends StatelessWidget {
  final Product product;
  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      // 1 title  text
      appBar: AppBar(title: Text("${product.title}")),
      // 2 image image . network
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.network(
              width: width,
              height: height * 0.3,
              "${product.image}",
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${product.description}",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 22),
                    Text(product.rating?.rate?.toStringAsFixed(1) ?? "N/A"),
                  ],
                ),
                Text(
                  "${product.category}",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),

      // 3 price text string
      //
      // 4 description string
      // 5 category string
      // 6 rating string
    );
  }
}
