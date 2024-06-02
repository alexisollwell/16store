import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Hello").animate().fade(duration: 500.ms).scale(delay: 500.ms), // runs after fade.,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Circulito(sized : 150),
              Column(
                children: [
                  const Circulito(
                    sized : 70,
                    shape: BoxShape.rectangle,
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: 2,
                    height: 70,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
          Container(
            width: 200,
            height: 2,
            color: Colors.black,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [         
              Rectangulo(
                height: 100,
                width: 100,
              )
            ],
          ),
          const Row(
            children: [         
              Spacer(flex: 2,),
              Rectangulo(
                height: 100,
                width: 120,
              ),
              Spacer(flex:  1,),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [         
              Rectangulo(
                height: 100,
                width: 20,
              ),
              Container(
                width: 200,
                height: 2,
                color: Colors.black,
              ),
              Rectangulo(
                height: 100,
                width: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final double height;
  final double width;
  const Rectangulo({
    super.key, required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        )
      ),
    );
  }
}

class Circulito extends StatelessWidget {
  final double sized;
  final BoxShape? shape;
  const Circulito({
    super.key, required this.sized, this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sized,
      height: sized,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.circle,
        border: Border.all(
          color: Colors.black
        )
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black
            )
          ),
        ),
      ),
    );
  }
}