import 'package:flutter/material.dart';
import 'package:flutter_365_2/home_page.dart';
import 'package:flutter_365_2/page_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageProvider(),
      child: MaterialApp(
          title: 'Day 2 Exodus App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: const Color.fromARGB(255, 27, 155, 176),
          ),
          home: const HomePage()),
    );
  }
}
