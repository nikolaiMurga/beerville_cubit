import 'package:beerville_cubit/app/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final inject = GetIt.instance;

@injectableInit
Future<void> setupInjector() async => inject.init();
