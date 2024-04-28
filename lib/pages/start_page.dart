import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_kids/pages/login_page.dart';
import 'package:smart_kids/routes.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("E-learning For Kids",style: TextStyle(fontSize: 25,color: Colors.white),)),
      ),
      body: Center(

         child: Column(
          
        children: [Image.asset("assets/images/start1.png",height: 450 ,fit: BoxFit.fill,),
        const Text("SMART KIDS",
        style: TextStyle(fontSize: 45, color: Colors.yellow,fontWeight: FontWeight.bold
        ),
        ),
        const SizedBox(height: 30,),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 60),
            backgroundColor: Colors.blue
          ),
          
        child:const Text("START",style: TextStyle(fontSize: 35,color: Colors.white),),
        onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  
                  
        },
        ),
      ],),
      ),
    );
  }
}