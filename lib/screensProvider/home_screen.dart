import 'package:curso_flutter/pagesProvider/indexPages.dart';
import 'package:curso_flutter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenProvider extends StatefulWidget {
  const HomeScreenProvider({
    super.key,
  });
  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}
class _HomeScreenProviderState extends State<HomeScreenProvider> {
  
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3()
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red,
        title: const Text('Material App BAr'),
        actions: [
          TextButton(
            onPressed: null, 
            child: Text(
              context.watch<CounterProvider>().counter.toString(),
              style: const TextStyle(color: Colors.black),
              )
            )
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Page 2'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Page 3'
            ),    
        ]
      ),
    );
  }
}