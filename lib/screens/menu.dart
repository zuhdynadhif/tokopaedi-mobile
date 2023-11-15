import 'package:flutter/material.dart';
import 'package:tokopaedi/widgets/left_drawer.dart';
import 'package:tokopaedi/screens/inventory_form.dart';
import 'package:tokopaedi/widgets/home_button_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<ButtonItem> items = [
    ButtonItem("Lihat Item", Icons.checklist, Colors.indigo),
    ButtonItem("Tambah Item", Icons.add_shopping_cart, Colors.blue),
    ButtonItem("Logout", Icons.logout, Colors.lightBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Tokopaedi',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Selamat datang!', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ButtonItem item) {
                  // Iterasi untuk setiap item
                  return ButtonCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
