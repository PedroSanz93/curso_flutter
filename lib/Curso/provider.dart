import 'package:curso_flutter/providers/counter_provider.dart';
import 'package:curso_flutter/screensProvider/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
      )
  );
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Counter',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: const HomeScreenProvider()
    );
  }
}