import 'package:flutter/material.dart';
import 'package:pdf_viewer/home_layout.dart';
import 'package:pdf_viewer/screens/login.dart';
import 'package:pdf_viewer/screens/matarial.dart';
import 'package:pdf_viewer/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       // home: , 
       initialRoute: 'login',  
        routes: {
          '/':(context) => HomeScreen(),
          'login':(context) => login(),
          'Reg':(context) => Reg(),
         // 'pdfScreen':(context)=>MatrialScreen()
        },
    );
  }
}
