import 'package:logger/logger.dart';


class AppLogger {
  static final logger = Logger();

  static void logi(String message) {
    logger.i(message);
  }

  static void logw(String message) {
    logger.w(message);
  }

  static void loge(String message) {
    logger.e(message);
  }
}