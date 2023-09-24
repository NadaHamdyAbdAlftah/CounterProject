import 'package:flutter/material.dart';
import 'package:vanilla_contacts_curse/counter/view/counter)page.dart';
import 'counter/view/counter_view.dart';

void main() {
  runApp(const CounterApp());
}
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage()
    );
  }
}

