import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mvp_with_getx_counter/app/pages/home/bindings/counter_bindings.dart';
import 'package:mvp_with_getx_counter/app/pages/home/counter_page.dart';

class Mvp extends StatelessWidget {
  const Mvp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter Flutter",
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const CounterPage(),
            binding: CounterBindings())
      ],
    );
  }
}
