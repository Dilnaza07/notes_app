import 'package:get_it/get_it.dart';

import 'core_module.dart';

final getIt = GetIt.instance;

void initDependencyInjection() {
  initCoreModule();
}
