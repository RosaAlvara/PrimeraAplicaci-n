import 'package:flutter/material.dart';
import 'package:geoquiz/src/page/botones_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño',
      initialRoute: 'botones',
      routes: {
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
