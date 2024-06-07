import 'package:flutter/material.dart';

class ItemsCarousel extends StatelessWidget {
  final List<String> imageNames = List<String>.generate(10, (i) => 'item${i + 1}.jpg');

  ItemsCarousel({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets_images/${imageNames[index]}'),
                  ),
                  Text('Item description ${index + 1}'),
                  const Text('\$1000'),
                  const Text('⭐️⭐️⭐️⭐️⭐️ (33)'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}