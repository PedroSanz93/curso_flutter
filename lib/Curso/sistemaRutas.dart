import 'package:flutter/material.dart';
import 'package:curso_flutter/screens/indexScreen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

final _routes = {
        '/':(context) => const LoginScreen(),
        '/home':(context) => HomeScreen(),
        '/dos': (context) => Screen2(),
        '/tres': (constext) => Screen3(),
      };

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeScreen',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Screen404()
        );
      },
    );
  }
}