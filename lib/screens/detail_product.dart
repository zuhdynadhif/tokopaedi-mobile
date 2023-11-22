import 'package:flutter/material.dart';
import 'package:tokopaedi/models/product.dart';
import 'package:tokopaedi/widgets/left_drawer.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
        backgroundColor: Colors.indigo,
      ),
      drawer: const LeftDrawer(),
      body: Column(
        children: [
          Text("Name: " + product.fields.name),
          Text("Price: " + product.fields.price.toString()),
          Text("Description: " + product.fields.description),
          Text("Amount: " + product.fields.amount.toString()),
        ],
      ),
    );
  }
}