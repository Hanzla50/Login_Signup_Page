import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Center(child: Text("E-learning For Kids",style: TextStyle(fontSize: 25,color: Colors.white),)),

      ),
      );
    
  }
}