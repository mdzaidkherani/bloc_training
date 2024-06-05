import 'package:flutter/material.dart';

class TestExample extends StatefulWidget {
  const TestExample({super.key});

  @override
  State<TestExample> createState() => _TestExampleState();
}

class _TestExampleState extends State<TestExample> {

  int counter = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Example2(counter: counter),
        ],
      ),
    );
  }
}


class Example2 extends StatelessWidget {
  int counter;
  Example2({super.key,required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text('$counter');
  }
}
