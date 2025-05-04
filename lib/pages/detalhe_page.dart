import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {

  final String parametro;

  DetalhePage({ Key? key, required this.parametro}): super(key: key);

   @override
   Widget build(BuildContext context) {
    // var parametro = ModalRoute.of(context)?.settings.arguments as String?;
       return Scaffold(
           appBar: AppBar(
            title: Text('Detalhe'),
           ),
           body: Center(
            child: Text(parametro),
           ),
       );
  }
}