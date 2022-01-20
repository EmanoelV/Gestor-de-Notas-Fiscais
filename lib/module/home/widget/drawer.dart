import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gestor_de_notas_fiscais/core/core.dart' show PathRoute;

class HomeDrawer extends Drawer {
  static final _child = ListView(
    children: <Widget>[
      ListTile(
        title: const Text('Notas Fiscais'),
        onTap: () {
          Get.toNamed(PathRoute.nf);
        },
      ),
      ListTile(
        title: const Text('Despesas'),
        onTap: () {
          Get.toNamed(PathRoute.expense);
        },
      ),
      ListTile(
        title: const Text('Empresas'),
        onTap: () {
          Get.toNamed(PathRoute.pj);
        },
      ),
      ListTile(
        title: const Text('Categorias'),
        onTap: () {
          Get.toNamed(PathRoute.category);
        },
      ),
      ListTile(
        title: const Text('Configurações'),
        onTap: () {
          Get.toNamed(PathRoute.config);
        },
      ),
    ],
  );
  HomeDrawer({
    Key? key,
  }) : super(key: key, child: _child);
}
