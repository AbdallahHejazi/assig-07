import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class sc1 extends StatefulWidget {
  const sc1({super.key});

  @override
  State<sc1> createState() => _sc1State();
}

class _sc1State extends State<sc1> { 
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(),
      body: Container(height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.pinimg.com/564x/d1/a3/69/d1a369ffa1bf07bd8ccb71d87a030863.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text("Welcome!",style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 95, 95, 95),),),
            ),

             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                decoration: InputDecoration(
                  label: Text("Username , Email & Phone Number"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    
                  ),
                ),
               ),
             ),
            
           Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                obscureText: true,
                       /* ... */
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    
                  ),
                ),
               ),
             ),
                  




            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 250, 176, 213),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  });
                }),
                child: Text("Back")),
          ],
        ),
     ), );
    
  }
}
