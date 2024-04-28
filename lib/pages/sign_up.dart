import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_kids/routes.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool changeButton = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 211, 79),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 211, 79),
        title: const Center(child: Text("E-learning For Kids",style: TextStyle(fontSize: 25,color: Colors.white),)),
      ),
      body: Stack(
      
         children: [
           StreamBuilder<Object>(
             stream: null,
             builder: (context, snapshot) {
               return Column(
                       children: [Image.asset("assets/images/zebra.png",height: 300 ,fit: BoxFit.fill,),
                       const Text("Welcome",style: TextStyle(fontSize: 40,color: Colors.white, fontWeight: FontWeight.bold),),
                       const SizedBox(
                height: 20,
                       ),
                       Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                child: Column(children: [
                  TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter a Email",
                    labelText: "Email",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Choose a Password",
                    labelText: "Password"
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.5,right: 35,left: 35
                //   ),
                //   child: Column
                //   (children: [
                //     TextField(
                //       decoration: InputDecoration(
                //         hintText: "Username",
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10)
                //         )
                //       ),
                //     ),
                //     TextField()
                //     ],),
               
                // ),
                       const SizedBox(height: 40,),

                       InkWell(

          onTap: () async{
            setState(() {
              changeButton = true;
            });
            await Future.delayed(Duration(seconds: 1));
            // Navigator 
          } ,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: changeButton?50 : 150,
            height: 50,
            
            alignment: Alignment.center,
            child: changeButton?Icon(Icons.done,color: Colors.white,) :Text(
              "Login",
              style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
              
              ),
          ),
        ),
               
                //        ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   minimumSize: Size(150, 40),
                //   backgroundColor: Colors.white
                // ),
                
                //        child:const Text("Sign Up",style: TextStyle(fontSize: 35,color: Colors.black),),
                //        onPressed: () {
                //        },
                //        ),
                ],),
                       )
                       ]
               );
             }
           ),
         ],
      
         
         
      )
    );
    
  }
}