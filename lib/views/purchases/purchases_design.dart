import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/back_arrow.dart';
import 'package:flutter_application_1/views/purchases/components/item_history.dart';

class Purchases extends StatefulWidget {
  const Purchases({super.key});

  @override
  State<Purchases> createState() => _SaleState();
}

class _SaleState extends State<Purchases> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackArrow(),
              Text(
                'Purchase history',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Divider(),
              ItemHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
