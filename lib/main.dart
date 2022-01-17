import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/module/home/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
