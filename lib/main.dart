import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(child: Text("Imagens")),
        ),
        body: Stack(children: [
          Image.asset(
            'assets/images/markus-spiske-zKvJXXbpsxI-unsplash.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Image.network(
              'https://images.unsplash.com/photo-1678284130014-dce38115356a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          )
        ]),
      ),
    );
  }
}
