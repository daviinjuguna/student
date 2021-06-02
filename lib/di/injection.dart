import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async => await $initGetIt(getIt);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
//*this is how to initialize injectable class....NB this code is always like this...never changes
