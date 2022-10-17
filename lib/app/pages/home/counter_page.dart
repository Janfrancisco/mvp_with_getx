import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_with_getx_counter/app/pages/home/model/counter_model.dart';
import 'package:mvp_with_getx_counter/app/pages/home/presenter/counter_presenter_impl.dart';
import 'package:mvp_with_getx_counter/app/pages/home/view/counter_view_impl.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

final presenter = CounterPresenterImpl();
final controller = Get.find<CounterModel>();

class _CounterPageState extends CounterViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Page'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Obx(() => Text('Você clicou ${controller.counter} vezes')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                presenter.incrementCounter();
              },
              child: const Text('Incrementar +'),
            )
          ]),
        ));
  }
}
