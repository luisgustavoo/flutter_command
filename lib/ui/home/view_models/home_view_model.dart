import 'package:flutter/foundation.dart';
import 'package:flutter_command/utils/command.dart';
import 'package:flutter_command/utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    load = Command0(_load);
    // ..execute();
  }

  late final Command0<String> load;

  Future<Result<String>> _load() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return Result.ok('Ok');
  }
}
