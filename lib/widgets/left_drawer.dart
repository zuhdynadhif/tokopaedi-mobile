import 'package:flutter/material.dart';
import 'package:tokopaedi/screens/inventory_form.dart';
import 'package:tokopaedi/screens/inventory_list.dart';
import 'package:tokopaedi/screens/list_product.dart';
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
            title: const Text('Lihat Item Tugas 8'),
            onTap: () {
              // TODO: Tambahkan Navigasi ke Halaman Tambah Item
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => InventoryListPage(),
                )
              );
            },
          ),
          ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text('Daftar Produk'),
              onTap: () {
                  // Route menu ke halaman produk
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
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
