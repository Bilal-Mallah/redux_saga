import 'package:task_redux_saga/Model/data.dart';
import 'package:task_redux_saga/redux/actions.dart';

AppState appstatereducer(AppState state, action) {
  return AppState(data: datareducer(state.data, action));
}

List<Data> datareducer(List<Data> state, AddItem action) {
  return []
    ..add(action.data)
    ..addAll(state);
}
