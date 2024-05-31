import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/input_search.dart';
import 'package:flutter_application_1/views/home/components/items_carousel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.center,
            colors: [
              Colors.greenAccent,
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              const InputSearch(text: 'Search', obscure: false),
              const Padding(
                padding: EdgeInsets.all(1.0),
                child: Center(
                  child: Text(
                    '16 Store',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900, color: Colors.blue),
                  ),
                ),
              ),
              Container(
                color: Colors.blue[50],
                child: const Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    children: [
                      Icon(Icons.location_pin),
                      Text(
                        'Deliver to Juan - Tijuana 22000',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset('assets_images/carousel1.jpg'),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 4),
                child: Text(
                  'For you',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ItemsCarousel(),
              ItemsCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}


