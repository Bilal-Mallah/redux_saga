import 'package:task_redux_saga/Model/data.dart';
import 'package:task_redux_saga/redux/actions.dart';
import 'package:redux/redux.dart';

class ViewModel {
  final List<Data> data;
  final Function(String, String) onadd;
  ViewModel({required this.data, required this.onadd});
  factory ViewModel.create(Store<AppState> store) {
    _onadd(String quis, String answer) {
      store.dispatch(AddItem(data: Data(answer: answer, quistion: quis)));
    }

    return ViewModel(data: store.state.data, onadd: _onadd);
  }
}
