import 'package:threads_clone/data/model/thread.dart';
import 'package:threads_clone/data/senddata/data.dart';


abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDatasource extends Ithread {
  @override
  List<thread> getThread() {
    return listThread()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}