import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'config.config.dart';

@InjectableInit(
  throwOnMissingDependencies: true,
)
Future<GetIt> configureInjector(GetIt getIt) {
  return getIt.init();
}
