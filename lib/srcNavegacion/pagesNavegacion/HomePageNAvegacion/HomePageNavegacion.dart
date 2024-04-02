
import 'package:curso_flutter/srcNavegacion/pagesNavegacion/HomePageNAvegacion/tabs/Bike.dart';
import 'package:curso_flutter/srcNavegacion/pagesNavegacion/HomePageNAvegacion/tabs/User.dart';
import 'package:curso_flutter/srcNavegacion/pagesNavegacion/HomePageNAvegacion/tabs/car.dart';
import 'package:flutter/material.dart';

class HomePageNavegacion extends StatelessWidget {
  const HomePageNavegacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Tabs Navigation',
            style: TextStyle(
              color: Colors.white,
                ),
              ),
            bottom: const TabBar(
              tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                  color: Colors.white,),
              ),
              Tab(
                icon: Icon(
                  Icons.verified_user,
                  color: Colors.white,),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                  color: Colors.white,),
              )
            ],
          ),
        ),
        body: const TabBarView(
            children: [
              Car(),
              User(),
              Bike()
          ],
        ),
      ),
    );
  }
}