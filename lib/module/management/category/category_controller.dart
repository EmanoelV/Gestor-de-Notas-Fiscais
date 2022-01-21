import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/core/core.dart';
import 'package:gestor_de_notas_fiscais/model/model.dart';
import 'package:gestor_de_notas_fiscais/repository/repository.dart';
import 'package:get/get.dart';

import 'widget/widget.dart';

class CategoryController extends GetxController {
  final CategoryRepository _repository;
  final RxList<CategoryModel> _categories = <CategoryModel>[].obs;
  CategoryController(this._repository);

  List<CategoryModel> get categories => _categories;

  void openForm([CategoryModel? category]) {
    Get.dialog(CategoryForm(category: category, onSave: createCategory));
  }

  void createCategory(CategoryModel category) async {
    try {
      await _repository.createCategory(category);
      refreshCategories();
    } catch (e, st) {
      Factory.msgError(msg: 'Erro inesperado', error: e, stackTrace: st);
    }
  }

  void refreshCategories() async {
    try {
      var categories = await _repository.getCategories();
      _categories.value = categories;
    } catch (e, st) {
      Factory.msgError(msg: 'Erro inesperado', error: e, stackTrace: st);
    }
  }
}
