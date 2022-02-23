import 'package:flutter/material.dart'; 

class ListView2Screen extends StatelessWidget {
   
  const ListView2Screen({Key? key}) : super(key: key);

  final opciones = const['Metroid','Fifa','Smash Bros','Metal Gear','Final Fantasy'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ListView 2')),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),

      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( 
          title: Text(opciones[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
          onTap: () {
            final juego = opciones[index];
            print(juego);
          },
        ), 
        separatorBuilder: ( _, __ ) => const Divider(), 
        itemCount: opciones.length
      )
    );
  }
}