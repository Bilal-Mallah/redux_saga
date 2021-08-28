import 'package:redux_saga/redux_saga.dart';
import 'package:task_redux_saga/Model/check_connection.dart';
import 'package:task_redux_saga/redux/actions.dart';

var internet = Result();
insert({AddItem? action}) sync* {
  yield Call(hasNetwork, result: internet);
  if (internet.value) {
    yield Put(AddItem(data: action!.data));
  } else {
    yield Cancel();
    print("no internet");
  }
}

mySaga() sync* {
  yield TakeEvery(insert, pattern: AddItem);
}
