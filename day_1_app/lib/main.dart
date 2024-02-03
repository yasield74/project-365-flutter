import 'package:day_1_app/presentation/main_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Day 1 App',
        debugShowCheckedModeBanner: false,
        home: MainPage());
  }
}
