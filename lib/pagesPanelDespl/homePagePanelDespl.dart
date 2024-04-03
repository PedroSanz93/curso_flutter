import 'package:curso_flutter/widgetsPanelDespl/home_body.dart';
import 'package:curso_flutter/widgetsPanelDespl/panel_up.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePagePanelDespl extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
              title: const Text('Panel Deslizable'),
              backgroundColor: Colors.red,
            ),
            body: SlidingUpPanel(
              color: Colors.transparent,
              minHeight: 30,
              maxHeight: MediaQuery.of(context).size.height * 0.74,
              panel: const PanelUp(),
              body: HomeBodyPanelDespl(),
            )
      );
  }
}