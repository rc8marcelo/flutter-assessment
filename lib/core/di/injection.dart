import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

///This is the instance of our service locator [GetIt].
final GetIt locator = GetIt.instance;

///Configures [GetIt] to setup all dependencies as needed.
@injectableInit
void configureInjection() {
  $initGetIt(locator);
}
