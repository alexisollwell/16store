import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/cart/cart_design.dart';
import 'package:flutter_application_1/views/home/home_design.dart';
import 'package:flutter_application_1/views/menu/menu_design.dart';
import 'package:flutter_application_1/views/user/user_design.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;

  const NavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '16 Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(selectedIndex: selectedIndex),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final int selectedIndex;

  const MyHomePage({super.key, required this.selectedIndex});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ShoppingCart(),
    User(),
    Menu(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.blue : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: _selectedIndex == 1 ? Colors.blue : Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: _selectedIndex == 2 ? Colors.blue : Colors.black),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: _selectedIndex == 3 ? Colors.blue : Colors.black),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
