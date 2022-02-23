import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.account_balance_outlined),
          title: const Text('Nombre de Ruta'),
          onTap: () {

            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView2Screen(),
            //   );
               
            // Navigator.push(context, route);

            Navigator.pushNamed(context, '/listview2');
          },
        ), 
        separatorBuilder: (_,__) => const Divider(),
        itemCount: 10
      )
    );
  }
}