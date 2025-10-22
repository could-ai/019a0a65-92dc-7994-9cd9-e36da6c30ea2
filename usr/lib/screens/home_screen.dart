import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/product.dart';
import 'package:couldai_user_app/widgets/product_card.dart';
import 'package:couldai_user_app/screens/product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> dummyProducts = [
      Product(
        id: '1',
        name: 'Classic Leather Jacket',
        description: 'A timeless piece for any wardrobe.',
        price: 199.99,
        imageUrl: 'https://images.unsplash.com/photo-1551028719-00167b16e2a9?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Product(
        id: '2',
        name: 'Minimalist Wrist Watch',
        description: 'Elegant and simple, for everyday use.',
        price: 89.99,
        imageUrl: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Product(
        id: '3',
        name: 'Suede Ankle Boots',
        description: 'Comfortable and stylish boots.',
        price: 120.00,
        imageUrl: 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      Product(
        id: '4',
        name: 'Designer Sunglasses',
        description: 'Protect your eyes with style.',
        price: 75.50,
        imageUrl: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.75,
        ),
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
            child: ProductCard(product: product),
          );
        },
      ),
    );
  }
}
