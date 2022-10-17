import 'package:mvp_with_getx_counter/app/pages/home/view/counter_view.dart';

abstract class CounterPresenter {
  void incrementCounter();
  set view(CounterView view);
}
