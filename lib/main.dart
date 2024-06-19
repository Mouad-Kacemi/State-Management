import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:statemanagement_mouadkacemi/counter_setstate/counter.dart';
import 'package:statemanagement_mouadkacemi/models/model.dart';
import 'package:statemanagement_mouadkacemi/models/model2.dart';
import 'package:statemanagement_mouadkacemi/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
        ChangeNotifierProvider(create: (context) => languageProvider())
      ],
      child: MaterialApp(home: CounterScreen()),
    );
    // return ChangeNotifierProvider<CounterModel>(
    //   create: (context) => CounterModel(),
    //   child: MaterialApp(
    //     home: CounterScreen(),
    //   ),
    // );
  }
}
