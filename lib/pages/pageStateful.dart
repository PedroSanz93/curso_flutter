import 'package:flutter/material.dart';



class PageStateful extends StatefulWidget{

  final String texto;
  const PageStateful(this.texto, {Key? key} ): super(key: key);

  @override
  State<PageStateful> createState() => _PageStatefulState();
}

class _PageStatefulState extends State<PageStateful> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),),
        body: Center(
          child: Text(widget.texto),),
    );
  }
}