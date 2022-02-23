import 'package:flutter/material.dart'; 

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);

  final opciones = const['Metroid','Fifa','Smash Bros','Metal Gear','Final Fantasy'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [
          ...opciones.map(
            (juegos) => ListTile( title: Text(juegos),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
          ).toList(),
        ],
      )
    );
  }
}