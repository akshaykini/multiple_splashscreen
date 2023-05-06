import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:multiple_splashscreen/View/Home/home_screen.dart';

class Screen_two extends StatefulWidget {
  const Screen_two({super.key});

  @override
  State<Screen_two> createState() => _Screen_twoState();
}

class _Screen_twoState extends State<Screen_two> {


@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      
      body: Column(
       
        children: <Widget>[
          
          Expanded(
            child: Center(
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 50, color: Colors.white,fontWeight: FontWeight.bold),
                ),
                Text(
                  'to',
                  style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
                ),
                Text(
                  'Flutter Series',
                  style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20,),


                CircularProgressIndicator(
                  color: Colors.red,
                  strokeWidth: 5,
                )
              ],
            )),
          ),

          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text("@ Presented by"),
                  Text("code_with_akshay"),
                ],
              ),),

              SizedBox(height: 20,)
        ],
      ),
    );
  }
}
