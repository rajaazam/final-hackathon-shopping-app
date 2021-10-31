// import 'package:fast_food_app/provider/my_provider.dart';
// import 'package:fast_food_app/screen/home_page.dart';
// import 'package:fast_food_app/screen/login.dart';
// import 'package:fast_food_app/screen/sign_up.dart';
// import 'package:fast_food_app/screen/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/my_provider.dart';
import 'package:shopping_app/screen/home_page.dart';
import 'package:shopping_app/screen/login.dart';
import 'package:shopping_app/screen/sign_up.dart';
import 'package:shopping_app/screen/welcome_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return
          
          MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:ThemeData(
            scaffoldBackgroundColor: Color(0xff2b2b2b),
          appBarTheme: AppBarTheme(
            color: Color(0xff2b2b2b),
          ),
          ),
            
            home: WelcomePage(),
            routes:{
              "/login" :(context)=>login(),
              "/Register": (context)=>singup(),
              "/homePage":(context)=>HomePage(),
             // "/home":(context)=>Home(),
            //  "/home1":(context)=>Home1()

            }
            
            )
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
  }
}