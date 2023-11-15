import 'package:flutter/material.dart';
import 'package:tokopaedi/screens/inventorylist_form.dart';
import 'package:tokopaedi/screens/menu.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Tokopaedi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  'Catat seluruh barang-barangmu di sini!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Item'),
            onTap: () {
              // TODO: Tambahkan Navigasi ke Halaman Tambah Item
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => InventoryFormPage(),
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
