import 'dart:convert';

import 'package:gestor_de_notas_fiscais/core/core.dart';
import 'package:gestor_de_notas_fiscais/model/model.dart';

class CategoryRepository {
  final baseUrl = 'https://api.mock.com';
  final IClient _client;
  CategoryRepository(this._client);

  Future<List<CategoryModel>> getCategories() async {
    final response = await _client.get(
      baseUrl + '/categories',
    );
    if (response.isSuccess) {
      return (response.body['data'] as List<Map<String, dynamic>>)
          .map((category) => CategoryModel.fromJson(category))
          .toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future createCategory(CategoryModel category) async {
    final response = await _client.post(
      baseUrl + '/categories',
      body: category.toJson(),
    );
    return response.isSuccess
        ? true
        : throw Exception('Failed to create category');
  }
}
