import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gestor_de_notas_fiscais/core/core.dart';
import 'package:gestor_de_notas_fiscais/repository/repository.dart';
import 'package:gestor_de_notas_fiscais/service/service.dart';
import 'package:get/get.dart';

class Factory {
  static IClient get client => FirebaseClient();
  static void msgError(
      {required String msg, required error, required StackTrace stackTrace}) {
    Get.snackbar(msg, error.toString(),
        backgroundColor: Get.theme.errorColor,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16));
    log(msg, error: error, stackTrace: stackTrace);
  }

  static CategoryRepository get categoryRepository =>
      CategoryRepository(client);
}
