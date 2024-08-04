import 'package:flutter/material.dart';
import 'edit_product_screen.dart';

class ManageProductsScreen extends StatelessWidget {
  static const routeName = '/manage-products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditProductScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Manage Products Screen'),
      ),
    );
  }
}
