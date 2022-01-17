import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<ValueNotifier<bool>> isDialOpen = ValueNotifier(false).obs;
  void toggleDial() => isDialOpen.value.value = !isDialOpen.value.value;
}
