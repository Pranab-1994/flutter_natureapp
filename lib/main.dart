import 'package:flutter/material.dart';
import 'package:nature_app/pages/dashboard/dashboard_screen.dart';
import 'package:nature_app/pages/dashboard/nature_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NatureDetails(),
    );
  }
}
