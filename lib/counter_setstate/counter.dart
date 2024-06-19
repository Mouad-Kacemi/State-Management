import 'package:flutter/material.dart';

class CounterAppSet extends StatefulWidget {
  const CounterAppSet({super.key});

  @override
  State<CounterAppSet> createState() => _CounterAppSetState();
}

class _CounterAppSetState extends State<CounterAppSet> {
  int value = 1;
  void decrement() {
    value--;
    setState(() {
      
    });
  }
  void increment() {
    value++;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Counter App')),
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('$value',style: TextStyle(fontSize: 40),),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [ElevatedButton(onPressed: decrement, child: Icon(Icons.remove)),
      ElevatedButton(onPressed: increment, child: Icon(Icons.add))],)
    ],),);
  }
}
