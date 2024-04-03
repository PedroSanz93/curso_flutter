import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {

  final GlobalKey<FormState> _formularioEstado = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formularioEstado,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                obscureText: true,
                validator: (value){

                  if(value!.length < 6){
                    return "La contraseña debe tener al menos 6 caracteres";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Contraseña",
                  border: InputBorder.none
                ),
              )
            ),
            Expanded(
              child: Container()
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(_formularioEstado.currentState!.validate()){
                  print("todo bien");
                } else{
                  print("Error");
                }
              }, 
              child: Text("Enviar")),
            )
          ],
        )
      ),
    );
  }
}