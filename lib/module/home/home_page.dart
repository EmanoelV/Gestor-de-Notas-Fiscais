import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'widget/widget.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: HomeSpeedDial(),
      drawer: HomeDrawer(),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
