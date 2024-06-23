import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sant_piipaa/screen/helper/DataController.dart';
import 'package:sant_piipaa/screen/view/home/HomeScreen.dart';
import 'package:sant_piipaa/screen/view/second/SecondScreen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ApiService(),),

  ],child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
        routes:
      {
        '/' : (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

