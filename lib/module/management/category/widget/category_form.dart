import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/model/model.dart';
import 'package:get/get.dart';

class CategoryForm extends StatefulWidget {
  final CategoryModel? category;
  final Function(CategoryModel) onSave;

  const CategoryForm({Key? key, this.category, required this.onSave})
      : super(key: key);

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  late TextEditingController categoryController;
  final _formKey = GlobalKey<FormState>();

  @override
  initState() {
    categoryController =
        TextEditingController(text: widget.category?.idName ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: categoryController,
                  validator: (value) => (value?.isEmpty ?? true)
                      ? 'Informe o nome da categoria'
                      : null,
                  decoration: const InputDecoration(
                    labelText: 'Categoria',
                    hintText: 'Digite o nome da categoria',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('Cancelar'),
                      onPressed: Get.back,
                    ),
                    TextButton(
                      child: const Text('Salvar'),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? true) return;
                        if (widget.category != null) {
                          widget.category!.idName = categoryController.text;
                          widget.onSave(widget.category!);
                        } else {
                          widget.onSave(CategoryModel(categoryController.text));
                        }
                        Get.back();
                      },
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
