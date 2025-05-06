import 'package:get/get.dart';

import '../controllers/counter.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
  }
}