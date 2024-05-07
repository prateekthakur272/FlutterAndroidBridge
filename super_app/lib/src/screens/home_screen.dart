import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:super_app/src/screens/sub_app_2_screen.dart';

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
          child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          GestureDetector(
            onTap: () {
              channel.invokeMethod('sub_app');
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.blue.shade200),
              child: const Text('SubApp 1'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SubApp2()));
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.green.shade200),
              child: const Text('SubApp 2'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.red.shade200),
            child: const Text('SubApp 3'),
          ),
        ],
      )),
    );
  }
}
