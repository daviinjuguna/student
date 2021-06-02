import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/util/simple_bloc_observer.dart';
import 'di/injection.dart';
import 'presentation/pages/core/eshule.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await configureInjection();
  runApp(Eshule());
}
