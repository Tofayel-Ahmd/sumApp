
import 'package:flutter/material.dart';
import 'package:sum_app/homeScreen.dart';


void main(){
  runApp(const SumApp());
}
class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}
