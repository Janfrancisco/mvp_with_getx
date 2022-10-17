import 'package:flutter/widgets.dart';
import 'package:mvp_with_getx_counter/app/pages/home/counter_page.dart';

import './counter_view.dart';

abstract class CounterViewImpl extends State<CounterPage>
    implements CounterView {
  @override
  void increment() {
    controller.counter.value++;
  }

  @override
  void initState() {
    presenter.view = this;
    super.initState();
  }
}
