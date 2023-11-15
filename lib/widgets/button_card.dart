import 'package:flutter/material.dart';
import 'package:tokopaedi/screens/inventorylist_form.dart';


class ButtonItem {
  final String name;
  final IconData icon;
  final Color backgroundColor;

  ButtonItem(this.name, this.icon, this.backgroundColor);
}

class ButtonCard extends StatelessWidget {
  final ButtonItem item;

  const ButtonCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.backgroundColor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          // TODO: Tambahkan Navigasi ke Halaman yang bersesuaian
          if (item.name == "Tambah Item") {
            // TODO: Tambahkan Navigasi ke MaterialPageRoute yang sesuai
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(
                builder: (context) => const InventoryFormPage(),
              )
            );
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
