import 'package:flutter/material.dart';

class PanelUp extends StatelessWidget {
  const PanelUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Icon(Icons.drag_handle_rounded),
          Image.asset('assets/images/imagenMapa.png')
        ],
      ),
    );
  }
}