import 'package:flutter/material.dart';
import 'package:movies_app/src/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(221, 51, 50, 50),
          useMaterial3: true),
      title: "FlutFlix",
      home: const MyHomePage(),
    );
  }
}
