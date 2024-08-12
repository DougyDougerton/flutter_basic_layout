import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: const Center(child: Text(
        "Howdy y'all",
        style: TextStyle(fontSize: 40),
      ),
      ),
      drawer: const Drawer(),
      floatingActionButton: const FloatingActionButton(onPressed: null),
      bottomNavigationBar: const BottomAppBar(),
    );
  }
}
