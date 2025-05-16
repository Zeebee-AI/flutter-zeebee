import 'package:get/get.dart';
import '../controller/controller.dart';

class ZeebeeChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZeebeeChatController>(
      () => ZeebeeChatController(),
    );
  }
}
