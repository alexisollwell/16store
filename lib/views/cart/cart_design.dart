import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.0,  // specify your width
                    height: 100.0, // specify your height
                    decoration: BoxDecoration(
                      color: Colors.green, // specify your color
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black, // specify your border color
                        width: 13.0, // specify your border width
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Container(
                        width: 7.0,
                        height: 80.0,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 200,
                      height: 6,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 20,
                      height: 70,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 150,
                      height: 6,
                      color: Colors.black,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
