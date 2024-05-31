import 'package:flutter/material.dart';

class ItemHistory extends StatelessWidget {
  const ItemHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset('assets_images/item${index+1}.jpg'),
              title: Text('Item ${index+1}'),
              subtitle: Text('Price: \$${(index+1)*100}'),
              trailing: Text('Date: 2021-10-${10+index}'),
            ),
          );
        },
      ),
    );
  }
}
