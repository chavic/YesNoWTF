import 'package:flutter/material.dart';
//import 'injection_container.dart' as di;
import 'presentation/route_generater.dart';

void main() async {
  //await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes No WTF',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}