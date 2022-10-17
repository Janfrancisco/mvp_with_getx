import 'package:mvp_with_getx_counter/app/pages/home/presenter/counter_presenter.dart';
import 'package:mvp_with_getx_counter/app/pages/home/view/counter_view.dart';

class CounterPresenterImpl implements CounterPresenter {
  late final CounterView _view;
  @override
  void incrementCounter() {
    _view.increment();
  }

  @override
  set view(CounterView view) => _view = view;
}
