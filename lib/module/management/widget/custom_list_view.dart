import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/core/core.dart' show IListItem;
import 'package:get/get.dart';

class CustomListView extends StatelessWidget {
  final List<IListItem> itens;
  const CustomListView(this.itens, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (_, index) => ListTile(
        onTap: itens[index].read,
        title: Text(itens[index].title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              color: Get.theme.colorScheme.secondary,
              icon: const Icon(Icons.edit),
              onPressed: itens[index].edit,
            ),
            const SizedBox(width: 10),
            IconButton(
              color: Colors.blue,
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: itens[index].delete,
            ),
          ],
        ),
      ),
    );
  }
}
