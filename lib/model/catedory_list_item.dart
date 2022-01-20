import 'package:gestor_de_notas_fiscais/core/core.dart' show IListItem;

class CategoryListItem implements IListItem {
  final String idName;

  const CategoryListItem(this.idName);

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  edit() {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  String get title => idName;
}
