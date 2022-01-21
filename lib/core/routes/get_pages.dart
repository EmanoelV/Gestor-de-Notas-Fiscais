import 'package:get/get.dart';

import '../../module/module.dart';
import 'path.dart';

final List<GetPage> getPages = [
  GetPage(name: PathRoute.home, page: () => HomePage()),
  GetPage(name: PathRoute.category, page: () => CategoryPage())
];
