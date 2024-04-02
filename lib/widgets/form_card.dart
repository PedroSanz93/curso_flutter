import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormCard extends StatefulWidget{
  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {


var cardMask = MaskTextInputFormatter(mask: '#### #### #### ####', filter: { "#": RegExp(r'[0-9]') });
var dateMask = MaskTextInputFormatter(mask: '##/##', filter: { "#": RegExp(r'[0-9]') });
var codeMask = MaskTextInputFormatter(mask: '###', filter: { "#": RegExp(r'[0-9]') });


  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            "https://www.mastercard.es/content/dam/public/mastercardcom/eu/es/images/Consumidores/escoge-tu-tarjeta/credito/credito-gold/1280x720-mc-sym-card-gld-ci-5BIN-mm.png"
            ),
          const SizedBox(
            height: 20,
          ),
          _inputName(),
          const SizedBox(height: 10,),
          _inputCard(),
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: _inputDate(),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: _inputCode(),
              ),
            ],
          ),
          Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("Pagar")
                )
              )
        ],
      ),
    );
  }

  Container _inputName() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(255, 0, 78, 194))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.name,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Su nombre"
          ),
          
        )
      );
  }

Container _inputCard() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(255, 0, 78, 194))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [cardMask],
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "0000-0000-0000-0000",
            border: InputBorder.none,
          ),
          
        )
      );
  }

  Container _inputDate() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(255, 0, 78, 194))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [dateMask],
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "01/24",
            border: InputBorder.none,
          ),
          
        )
      );
  }

  Container _inputCode() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(255, 0, 78, 194))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [codeMask],
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "000",
            border: InputBorder.none,
          ),
        )
      );
  }
}