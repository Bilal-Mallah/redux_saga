import 'package:redux_saga/redux_saga.dart';
import 'package:task_redux_saga/Model/check_connection.dart';
// ignore: unused_import
import 'package:task_redux_saga/Widgets/alert_dialog.dart';
import 'package:task_redux_saga/redux/actions.dart';

bool internet = true;
insert({action}) sync* {
  var internet = Result();
  yield Call(hasNetwork, result: internet);
  if (internet.value) {
    yield Put(action);
  } else {
    yield Put(null);
  }
}

mySaga() sync* {
  yield TakeEvery(insert, pattern: AddItem);
}
