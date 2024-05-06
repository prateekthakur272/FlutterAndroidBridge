import 'package:flutter/material.dart';
import 'package:super_app/src/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super App',
      home: const HomeScreen(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
