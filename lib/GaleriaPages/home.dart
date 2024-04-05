import 'package:curso_flutter/GaleriaPages/image_page.dart';
import 'package:curso_flutter/dataGalery/images_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Nuestra galeria"),
        backgroundColor: Colors.red,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(5),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: _listaImagenes,
      ),
    );
  }

  List<Widget> get _listaImagenes {
    
    List<Widget> _listImages =[];

      for (var image in images) {

        _listImages.add(
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
              MaterialPageRoute(
                  builder: (context) => ImagePage(url: image)
                  )
                );
            },
            child: Column(
              children: [
                Hero(
                  tag: image,
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                          ),
                ),
              ],
            ),
          )
      );
    }

    return _listImages;
  }
} 