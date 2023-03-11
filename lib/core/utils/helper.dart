import 'dart:io';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class Helper {
  static String? tempPath;
  static Future<String?> saveTempPath() async {
    final Directory directory = await getTemporaryDirectory();
    tempPath = directory.path;
    return tempPath;
  }

  static void showSnackBar(String message) {
    Get.snackbar('', message,
        duration: Duration(seconds: 2),
        // colorText: AppColors.white,
        // backgroundColor: AppColors.black,
        snackPosition: SnackPosition.BOTTOM);
  }
}
