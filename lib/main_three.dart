import 'package:flutter/material.dart';
import 'package:flutter_basic_layout/screens/list_body.dart';
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
        backgroundColor: Colors.yellow,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Cris'),
            Text('Doug'),
            Text('Carson'),
            Text('Pablito'),
          ],
        ),
      ), 
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index){
          return numbers[index];
        }

      ),
      drawer: Drawer(
      child: ListView(
         children: const [
          DrawerHeader(
            child: Text('Header'),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 255, 8),
            ),
          ),
          ListTile(
            title: Text('Stuff'),
            onTap: null,
          ),
            ListTile(
            title: Text('and'),
            onTap: null,
          ),
          ListTile(
            title: Text('Things'),
            onTap: null,
          ),
         ],

      )),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              iconSize: 30,
              onPressed: null, 
              icon: Icon(Icons.home)),
            IconButton(
              iconSize: 30,
              onPressed: null, 
              icon: Icon(Icons.person)),
            IconButton(
              iconSize: 30,
              onPressed: null, 
              icon: Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}