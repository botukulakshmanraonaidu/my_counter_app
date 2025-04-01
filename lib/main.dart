import 'package:flutter/material.dart';

void main() {
  runApp(my_Counter_App());
}

class my_Counter_App extends StatelessWidget {
  const my_Counter_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: counterscreen(),
    );
  }
}

class counterscreen extends StatefulWidget {
  const counterscreen({super.key});

  @override
  State<counterscreen> createState() => _counterscreenState();
}

class _counterscreenState extends State<counterscreen> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void refresh() {
    setState(() {
      counter = 0;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Counter App'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: Colors.white),
            onPressed: refresh,
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: decrement, child: Icon(Icons.minimize)),
            SizedBox(width: 20),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            SizedBox(width: 20),
            ElevatedButton(onPressed: increment, child: Icon(Icons.add)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
