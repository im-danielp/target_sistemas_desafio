import 'package:get_it/get_it.dart';
import 'package:target/core/stores/device_store.dart';
import 'package:target/modules/infos/stores/info_store.dart';
import 'package:target/modules/report/stores/report_store.dart';

final getIt = GetIt.instance;

void initLocator() {
  getIt.registerLazySingleton<InfoStore>(() => InfoStore());
  getIt.registerLazySingleton<ReportStore>(() => ReportStore());
  getIt.registerLazySingleton<DeviceStore>(() => DeviceStore());
}
