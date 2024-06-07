import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/navigation_bar.dart';
import 'package:flutter_application_1/views/purchases/purchases_design.dart';
import 'package:flutter_application_1/views/sale/sale_design.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 66,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavBar(selectedIndex: 0)),
                  );
                },
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(double.infinity, 40),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 33),
                ),
                child: const Text('Home'),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavBar(selectedIndex: 1)),
                  );
                },
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(double.infinity, 40),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 33),
                ),
                child: const Text('Cart'),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavBar(selectedIndex: 2)),
                  );
                },
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(double.infinity, 40),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 33),
                ),
                child: const Text('Profile'),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Purchases()),
                  );
                },
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(double.infinity, 40),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 33),
                ),
                child: const Text('Purchase History'),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sale()),
                  );
                },
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(double.infinity, 40),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 33),
                ),
                child: const Text('Sale now!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}