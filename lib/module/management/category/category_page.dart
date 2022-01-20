import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/model/model.dart' show CategoryListItem;
import '../widget/widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categorias"),
      ),
      body: CustomListView(
          List.generate(11, (index) => CategoryListItem('Teste $index'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
