import 'package:ecommerceflutterfirebase/pages/buttomnav.dart';
import 'package:ecommerceflutterfirebase/pages/login.dart';
import 'package:ecommerceflutterfirebase/pages/product_detail.dart';
import 'package:ecommerceflutterfirebase/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Signup());
  }
}
