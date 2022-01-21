import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/core/core.dart';
import 'package:gestor_de_notas_fiscais/model/model.dart' show CategoryListItem;
import 'package:get/get.dart';
import '../widget/widget.dart';
import 'category_controller.dart';

class CategoryPage extends StatelessWidget {
  final controller = Get.put(CategoryController(Factory.categoryRepository));
  CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categorias"),
      ),
      body: Obx(() {
        return CustomListView(controller.categories
            .map((e) => CategoryListItem(e.idName))
            .toList());
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.openForm,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
