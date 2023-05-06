import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:multiple_splashscreen/View/splashscreen/Screen_two.dart';


class Screen_one extends StatefulWidget {
  const Screen_one({super.key});

  @override
  State<Screen_one> createState() => _Screen_oneState();
}

class _Screen_oneState extends State<Screen_one> with TickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

          @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Screen_two()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      
      body: SafeArea(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedBuilder(
                animation: _controller,
                child: Container(
                  height: 200,
                  width: 200,
                  child: const Center(
                    child: Image(image: AssetImage('images/virus_image.png')),
                  ),
                ),
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                  );
                },
              ),
            ),
           
            
          ],
        ),
      ),
    );
  }
}
