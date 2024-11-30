import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:banana_munch/Model/products.dart';
import 'package:banana_munch/widgets/productWidget.dart';
import 'package:banana_munch/Model/categories.dart';

class CategoryItemScreen extends StatefulWidget {
  final Category category;

  const CategoryItemScreen({super.key, required this.category});

  @override
  _CategoryItemScreenState createState() => _CategoryItemScreenState();
}

class _CategoryItemScreenState extends State<CategoryItemScreen> {
  late Future<List<Product>> _productsFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = _fetchProductsByCategory(widget.category.title);
  }

  Future<List<Product>> _fetchProductsByCategory(String categoryTitle) async {
    final collection = FirebaseFirestore.instance.collection('productsDataset');
    final querySnapshot = await collection.where('categories', arrayContains: categoryTitle).get();

    return querySnapshot.docs.map((doc) {
      return Product(
        id: doc.id, // Firestore document ID
        title: doc['title'],
        categories: List<String>.from(doc['categories']),
        imageUrl: doc['imageUrl'],
        price: 0, // Placeholder, will be dynamic
        duration: 0, // Placeholder, will be dynamic
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title,style: Theme.of(context).textTheme.bodyLarge,),
      ),
      body: FutureBuilder<List<Product>>(
        future: _productsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            print(snapshot.error);
            return const Center(child: Text('Error fetching products',style: TextStyle(color: Colors.white)));
          }

          final products = snapshot.data ?? [];

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            padding: const EdgeInsets.all(16),
            itemCount: products.length,
            itemBuilder: (ctx, index) {
              final product = products[index];
              return ProductWidget(product: product); // Create a widget to display product details
            },
          );
        },
      ),
    );
  }
}
