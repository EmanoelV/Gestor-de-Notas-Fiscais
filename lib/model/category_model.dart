class CategoryModel {
  String idName;
  CategoryModel(this.idName);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      CategoryModel(json['idName']);

  Map<String, dynamic> toJson() => {'idName': idName};
}
