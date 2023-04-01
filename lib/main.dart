import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The Lottery App',
                    style: TextStyle(fontSize: 31),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Container(
                    height: 222,
                    width: 255,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: x == 3
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                    size: 66,
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Text(
                                    'Congatulatios!YOU ARE THE WINNER.\nYour lottery num is $x',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 17),
                                  )
                                ])
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 66,
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Text(
                                    'Sorry! Better luck next time.\nyour lottery num is $x',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 17),
                                  )
                                ]),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                x = random.nextInt(6);
                print(x);
                setState(() {});
              },
              child: Icon(Icons.refresh),
            )));
  }
}
