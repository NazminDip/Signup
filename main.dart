import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode:  currentTheme.currentTheme,
      home: HomePage(),
    );
  }
}
