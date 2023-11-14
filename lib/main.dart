import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/themes/app_theme.dart';
import 'package:flutter_application_1/presentation/screen/counter_screen.dart';


void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstApp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const CounterFunctionsScreen(),
    );
  }
}