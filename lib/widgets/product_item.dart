import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItemWidget(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to product detail screen
      },
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
