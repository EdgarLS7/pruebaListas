import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListViewScreen(),
      initialRoute: '/home',
      routes: {
        '/home'     : (BuildContext context) => const HomeScreen(),
        '/listview' : (BuildContext context) => const ListViewScreen(),
        '/listview2': (BuildContext context) => const ListView2Screen(), 
        '/alert'    : (BuildContext context) => const AlertScreen(), 
        '/card'     : (BuildContext context) => const CardScreen(),  
      },
      onGenerateRoute: (settings) {
        print(settings);

        return MaterialPageRoute(
          builder: (context) => const ListView2Screen(),
        );
      }
    );
  }
}