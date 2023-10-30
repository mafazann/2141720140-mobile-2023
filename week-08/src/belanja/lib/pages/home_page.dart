import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
          name: 'RTX 4090',
          price: 5000,
          rating: 4,
          sold: 15000,
          imageUrl: 'images/rtx.jpeg'),
      Item(
          name: 'RTX 3090',
          price: 2000,
          rating: 4,
          sold: 15000,
          imageUrl: 'images/rtx2.jpeg'),
    ];
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset(item.imageUrl)),
                      Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Rating ${item.rating.toString()}')),
                          Expanded(
                            child: Text(
                              'Sold: ${item.sold.toString()}',
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
    );
  }
}
