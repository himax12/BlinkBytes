import 'package:basicapp1/data/data.dart';
import 'package:basicapp1/data/threads.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDartSource extends Ithread {
  @override
  List<thread> getThread() {
    return listThread()
        .map((JsonObject) => thread.formJson(JsonObject))
        .toList();
  }
}
