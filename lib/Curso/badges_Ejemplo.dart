import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLabelVisible = true;
  bool _isEmojiVisible = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Badges',
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Badges'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState((){
                    _isLabelVisible = !_isLabelVisible;
                  }
                );
              },
              child: const Text('Mostrar/Ocultar'),
              ),
              InkWell(
                onLongPress: (){
                    setState(() {
                      _isEmojiVisible = !_isEmojiVisible;
                    }
                  );
                },
                child: Badge(
                  largeSize: 30,
                  isLabelVisible: _isEmojiVisible,
                  backgroundColor: Colors.grey,
                  label: const Text('🐒',
                  style: TextStyle(fontSize: 15),),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    child: const Text("Esto es un mensaje de prueba que me enviaron desde el chat",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        
          bottomNavigationBar: BottomNavigationBar(items:  [
            BottomNavigationBarItem(
              icon: Badge(
                isLabelVisible: _isLabelVisible,
                label: Text('9'),
                backgroundColor: Colors.purple,
                child: Icon(Icons.home)), 
              label: 'Home'),
            BottomNavigationBarItem(
              icon: Badge(
                isLabelVisible: _isLabelVisible,
                label: Text('5'),
                backgroundColor: Colors.green,
                child: Icon(Icons.search)), 
              label: 'Search'),
            BottomNavigationBarItem(
              icon: Badge(
                isLabelVisible: _isLabelVisible,
                label: Text('7'),
                backgroundColor: Colors.yellow,
                child: Icon(Icons.person)), 
              label: 'Profile'),
          ],
        ),
      ),
    );
  }
}