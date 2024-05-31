import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/back_arrow.dart';
import 'package:flutter_application_1/components/navigation_bar.dart';

class Sale extends StatefulWidget {
  const Sale({super.key});

  @override
  State<Sale> createState() => _SaleState();
}

class _SaleState extends State<Sale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackArrow(),
              const Text(
                'Sale',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavBar(selectedIndex: 0)),
                    );
                },
                child: const Text('Register item'),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}