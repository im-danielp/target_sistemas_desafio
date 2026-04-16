import 'package:get_it/get_it.dart';
import 'package:target/core/mobx/info_store.dart';
import 'package:target/modules/report/controller_report.dart';

final getIt = GetIt.instance;

void initLocator() {
  getIt.registerLazySingleton<InfoStore>(() => InfoStore());
  getIt.registerLazySingleton<ControllerReport>(() => ControllerReport());
}
