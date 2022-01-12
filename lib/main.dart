import 'package:flutter/material.dart';
import 'package:nv1_15/pages/detail_page.dart';
import 'package:nv1_15/pages/home_page.dart';
import 'package:nv1_15/pages/login_page.dart';
import 'package:nv1_15/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) =>  LoginPage(),
        '/home': (_) => const HomePage(),
        '/detail': (_)=>  DetailPage(),
      },
    );
  }
}

