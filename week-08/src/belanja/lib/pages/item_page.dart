import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(itemArgs.imageUrl),
            SizedBox(
              height: 15,
            ),
            Text(
              'Item Name: ${itemArgs.name}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Item Price: ${itemArgs.price}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Rating Price: ${itemArgs.rating}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Item Sold: ${itemArgs.sold}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
