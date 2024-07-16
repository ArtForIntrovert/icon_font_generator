import 'package:flutter/material.dart';

import 'ui/icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            UIIcons.account,
            UIIcons.arrowLeft,
            UIIcons.collection,
            UIIcons.arrowRight,
          ]
              .map((icon) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(icon),
                );
              })
              .cast<Widget>()
              .toList(),
        ),
      ),
    );
  }
}
