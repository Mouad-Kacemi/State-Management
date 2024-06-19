import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_mouadkacemi/models/model.dart';
import 'package:statemanagement_mouadkacemi/models/model2.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Counter App'),
          actions: [
            TextButton(
                onPressed: () {
                  context.read<languageProvider>().langEng
                      ? context.read<languageProvider>().change(true)
                      : context.read<languageProvider>().change(false);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    context.watch<languageProvider>().getBody("lang"),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ))
          ],
        ),
        body: Column(
          children: [
            ChangeNotifierProvider(
              create: (context) => CounterModel(),
              child: Consumer<CounterModel>(
                  builder: (context, counter, _) => Card(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text("T shirts"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    context
                                        .watch<languageProvider>()
                                        .getBody("body"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25)),
                                Text(
                                  '${context.watch<CounterModel>().counter}',
                                  style: TextStyle(fontSize: 40),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          context
                                              .read<CounterModel>()
                                              .decrement();
                                        },
                                        child: Icon(Icons.remove)),
                                    ElevatedButton(
                                        onPressed: () {
                                          context
                                              .read<CounterModel>()
                                              .increment();
                                        },
                                        child: Icon(Icons.add))
                                  ],
                                ),
                              ],
                            ),
                          ]))),
            ),
            ChangeNotifierProvider(
              create: (context) => CounterModel(),
              child: Consumer<CounterModel>(
                  builder: (context, val, _) => Card(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text("Jeans"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    context
                                        .watch<languageProvider>()
                                        .getBody("body"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25)),
                                Text(
                                  '${context.watch<CounterModel>().counter}',
                                  style: TextStyle(fontSize: 40),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          context
                                              .read<CounterModel>()
                                              .decrement();
                                        },
                                        child: Icon(Icons.remove)),
                                    ElevatedButton(
                                        onPressed: () {
                                          context
                                              .read<CounterModel>()
                                              .increment();
                                        },
                                        child: Icon(Icons.add))
                                  ],
                                ),
                              ],
                            ),
                          ]))),
            ),
          ],
        ));
  }
}
