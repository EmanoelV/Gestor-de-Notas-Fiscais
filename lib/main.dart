import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/core.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: getPages,
      initialRoute: PathRoute.home,
    );
  }
}
