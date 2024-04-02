import 'package:flutter/material.dart';
import 'package:curso_flutter/services/notifications_services.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();

  runApp(MyApp());
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
      title: 'Material App',
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Material App BAr'),
        ),
        body: const PaginaPrincipal(),
      )
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          onPressed: () {
            mostrarNotificacion();
          },
          child: const Text('Mostrar la notificacion')
          ),
    );
  }
}