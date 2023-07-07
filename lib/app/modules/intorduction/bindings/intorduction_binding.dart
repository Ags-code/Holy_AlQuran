import 'package:get/get.dart';

import '../controllers/intorduction_controller.dart';

class IntorductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntorductionController>(
      () => IntorductionController(),
    );
  }
}
