
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:simple_logger/simple_logger.dart';

final logger = SimpleLogger();

class AppController extends GetxController {


  @override
  void onInit() {
    super.onInit();
    logger.info('onInit');
  }

  @override
  void refresh() {
    logger.info('refresh');
  }

  @override
  void onReady() {
    super.onReady();
    super.onReady();
    logger.info("onReady");
  }
}