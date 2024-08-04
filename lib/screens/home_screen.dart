import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/manage_products_screen.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final List<Map<String, String>> products = [
      {'id': '1', 'title': 'Shirt', 'imageUrl': 'url_to_image'},
      {'id': '2', 'title': 'Shoes', 'imageUrl': 'url_to_image'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).pushNamed(ManageProductsScreen.routeName);
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ProductDetailScreen(
                  productId: products[i]['id']!,
                  title: products[i]['title']!,
                ),
              ),
            );
          },
          child: GridTile(
            child: Image.network(
              products[i]['imageUrl']!,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              title: Text(
                products[i]['title']!,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
