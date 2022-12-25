import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager/injections/injection.config.dart';

@InjectableInit()
void configureDependencies(GetIt getIt) => $initGetIt(getIt);
