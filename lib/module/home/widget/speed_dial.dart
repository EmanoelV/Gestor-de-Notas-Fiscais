import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

import 'package:gestor_de_notas_fiscais/core/core.dart' show PathRoute;
import '../home_controller.dart';

class HomeSpeedDial extends SpeedDial {
  static final controller = Get.find<HomeController>();
  static final _children = [
    SpeedDialChild(
      label: 'Registrar Nota Fiscal',
      labelStyle: const TextStyle(fontSize: 24),
      onTap: () {
        controller.toggleDial();
        Get.toNamed(PathRoute.createNf);
      },
    ),
    SpeedDialChild(
      label: 'Registrar Despesa',
      labelStyle: const TextStyle(fontSize: 24),
      onTap: () {
        controller.toggleDial();
        Get.toNamed(PathRoute.createExpense);
      },
    ),
  ];
  HomeSpeedDial({Key? key})
      : super(
            key: key,
            spacing: 24,
            closeManually: true,
            icon: Icons.add,
            onPress: controller.toggleDial,
            openCloseDial: controller.isDialOpen.value,
            children: _children);
}
