import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  // Widget button({
  //   required String name,
  //   required Color color,
  //   required Color textColor
  // }) {
  //   return Container(
  //     height: 45,
  //     width: 300,
  //     child: RaisedButton(
  //       color: color,
  //       shape: RoundedRectangleBorder(
  //       side: BorderSide(color: Colors.green,width: 2),
  //         borderRadius: BorderRadius.circular(30),
  //       ),
  //       onPressed: () {
        
  //       },
  //       child: Text(
  //         name,
  //         style: TextStyle(color: textColor),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/logo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome To  Online shop",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Order Every thing form our shop and",
                      style: TextStyle(
                      fontSize: 20,
                     // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                      Text("Make reservation in real- time",
                      style: TextStyle(
                      fontSize: 20,
                     // fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),)
                    ],
                  ),
          
                
                  //button(name: 'Login', color: Colors.green,textColor: Colors.white),
                 // button(name: 'SignUp', color: Colors.green,textColor: Colors.white),
                Container(
                  height: 45,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(30),
                   
                 ),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },child: Text('Login',style: TextStyle(color: Colors.white,
                  fontSize: 15
                  ),),
                  
                  ),
                ),
                 Container(
                  height: 45,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(30),
                   
                 ),
                  child: TextButton(onPressed: (){
                     Navigator.pushNamed(context, '/Register');
                  },child: Text('SignUp',style: TextStyle(color: Colors.white,
                  fontSize: 15
                  ),),
                  
                  ),
                )
           
               
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}