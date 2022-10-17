import 'package:get/get.dart';
import 'package:mvp_with_getx_counter/app/pages/home/model/counter_model.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterModel());
  }
}
