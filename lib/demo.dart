import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> counterNotifier = ValueNotifier<int>(0);

  void incrementCounter() {
    counterNotifier.value += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ValueNotifier Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(counterNotifier: counterNotifier),
            SizedBox(height: 20),
            IncrementButton(onPressed: incrementCounter),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    counterNotifier.dispose();
    super.dispose();
  }
}

class CounterDisplay extends StatelessWidget {
  final ValueNotifier<int> counterNotifier;

  CounterDisplay({required this.counterNotifier});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: counterNotifier,
      builder: (context, value, child) {
        return Text(
          'Counter: $value',
          style: TextStyle(fontSize: 24),
        );
      },
    );
  }
}

class IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;

  IncrementButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Increment Counter'),
    );
  }
}
