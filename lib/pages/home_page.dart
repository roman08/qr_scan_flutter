import 'package:flutter/material.dart';
import 'package:qr_flutter/pages/direcciones_page.dart';
import 'package:qr_flutter/pages/mapas_page.dart';
import 'package:qr_flutter/widgets/custom_navigtorbar.dart';
import 'package:qr_flutter/widgets/scan_button.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: null)
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustonnavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   );
  }
}


class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final currentIndex = 1;

    switch ( currentIndex ) {
      case 0:
        return MapasPage();
        break;
      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}