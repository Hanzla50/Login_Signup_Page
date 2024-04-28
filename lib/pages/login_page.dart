import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_kids/pages/home_page.dart';
import 'package:smart_kids/pages/sign_up.dart';
import 'package:smart_kids/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String name = "";
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext contect) async{
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
     await Future.delayed(Duration(seconds: 1));
      await Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
     setState(() {
     changeButton = false;
     });   
}
  }
  // final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: const Center(child: Text("E-learning For Kids",style: TextStyle(fontSize: 25,color: Colors.white),)),
      // ),
        child: SingleChildScrollView(
         child: Column(
        children: [Image.asset("assets/images/login.png",height: 300 ,fit: BoxFit.fill,),
         Text("Welcome $name",style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 84, 82, 66), fontWeight: FontWeight.bold),),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),

          child: Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter a Username",
                labelText: "Username"
              ),
              validator: (value) {
                if(value!.isEmpty){
                  return null;
                }
                return "Username cannot be empty";;
              },

              onChanged: (value) {
                name = value;
                setState(() {
                  
                });
              } ,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter a Password",
                labelText: "Password"
              ),
              validator: (value) {
                if(value!.isEmpty){
                  return null;
                }
                else if(value.length<6){
                  return "Password should be atleast 6";
                }
                return "Password cannot be empty";;
              },
            ),
            Container(
              
            alignment: Alignment.centerRight,
            child: const Text("Forgot Password?"),
                ),
            
            
                    const SizedBox(height: 30,),
            
                    Material(
            color: Colors.green,
            borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
            child: InkWell(
            
              onTap: () => moveToHome(context) ,
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
                  
              ),
            ),
                    ),          
           const SizedBox(height: 10,),
            
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have aaccount?"),
              const SizedBox(width: 4),
              GestureDetector(
               onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
            },
            
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 123, 218), fontWeight: FontWeight.bold
                  ),),
              )
            ],
                     )
                   
            
            ],),
          ),
        )
        ]
         ),

         
         
      )
    );
    
  }
}