import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

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
            onPressed: () async {
              try {
                String text = _textController.text;
                //debugPrint(text);
                final Directory directory = await getApplicationDocumentsDirectory();
                final File file = File('${directory.path}/my_file.txt');
                await file.writeAsString(text);
                String readText = await file.readAsString();
                print(readText);
              } catch (e) {
                print(
                  e.toString(),
                );
              }
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
