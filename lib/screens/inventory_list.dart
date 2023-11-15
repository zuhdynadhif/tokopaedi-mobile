import 'package:flutter/material.dart';
import 'package:tokopaedi/models/item.dart';
import 'package:tokopaedi/widgets/left_drawer.dart';

class InventoryListPage extends StatelessWidget {
  const InventoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Item'),
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: ItemList.items.length,
        itemBuilder: (context, index){
          final item = ItemList.items[index];
          return Card(
            child: ListTile(
              title: Text(
                item.name,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${item.description}',
                  ),
                  Text(
                    'Amount: ${item.amount}',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}