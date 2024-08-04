import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/manage_products_screen.dart';
import 'providers/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Cart(),
      child: MaterialApp(
        title: 'Fashion Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
        ),
        home: HomeScreen(),
        routes: {
          CartScreen.routeName: (ctx) => CartScreen(),
          CheckoutScreen.routeName: (ctx) => CheckoutScreen(),
          ManageProductsScreen.routeName: (ctx) => ManageProductsScreen(),
        },
      ),
    );
  }
}
