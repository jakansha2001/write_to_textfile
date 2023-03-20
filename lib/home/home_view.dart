import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textController,
          ),
          ElevatedButton(
            onPressed: () {
              String text = _textController.text;
              debugPrint(text);
            },
            child: const Text(
              'Print',
            ),
          )
        ],
      ),
    );
  }
}
