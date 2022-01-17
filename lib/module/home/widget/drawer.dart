import 'package:flutter/material.dart';

class HomeDrawer extends Drawer {
  static final _child = ListView(
    children: <Widget>[
      ListTile(
        title: const Text('Notas Fiscais'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Despesas'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Empresas'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Categorias'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Configurações'),
        onTap: () {},
      ),
    ],
  );
  HomeDrawer({
    Key? key,
  }) : super(key: key, child: _child);
}
