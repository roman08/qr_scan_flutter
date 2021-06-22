import 'package:flutter/material.dart';
import 'package:qr_flutter/pages/home_page.dart';
import 'package:qr_flutter/pages/mapa_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR READER',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),
        'mapa': ( _ ) => MapaScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple 
        )
      ),
    );
  }
}