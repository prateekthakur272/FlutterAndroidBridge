import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const channel = MethodChannel('flutter_channel');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super App'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          channel.invokeMethod('sub_app');
        },child: const Text('Open Sub App'),),
      ),
    );
  }
}
