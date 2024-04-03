import 'package:curso_flutter/widgetsForm/formulario.dart';
import 'package:flutter/material.dart';

class HomeScreenForm extends StatelessWidget {
  const HomeScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App BAr'),
      ),
      body: const Formulario(),
    );
  }
}