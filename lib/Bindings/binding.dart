import 'package:get/get.dart';
import 'package:listfilm/Controllers/BottomNavCntrler.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Bottomnavcntrler>(() => Bottomnavcntrler());
  }
}
