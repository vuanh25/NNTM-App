import 'package:application_flutter/get_it.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'common/storage/app_prefs.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() => $initGetIt(getIt);

@module
abstract class AppModule {
  @preResolve
  Future<AppPref> get appPrefs => AppPref.instance();
}
