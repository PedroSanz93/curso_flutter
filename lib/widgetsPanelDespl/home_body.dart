import 'package:flutter/material.dart';

class HomeBodyPanelDespl extends StatefulWidget {
  HomeBodyPanelDespl({super.key});

  @override
  State<HomeBodyPanelDespl> createState() => _HomeBodyPanelDesplState();
}

class _HomeBodyPanelDesplState extends State<HomeBodyPanelDespl> {
  List<String> persons = [
    'Jose Lopez',
    'Pablo rivera',
    'Pedro Sanz',
    'Rafael Castro',
    'Javier Aguilera',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (
            BuildContext context, 
            int index){
              return ListTile(
                title: Text(persons[index]),
                leading: CircleAvatar(
                  child: Text(
                    persons[index].substring(0,1)
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios
                  ),
              );
        }
      ),
    );
  }
}