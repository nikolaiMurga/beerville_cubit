// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beerville_cubit/domain/navigation.dart' as _i4;
import 'package:beerville_cubit/presentation/home/bloc/home_cubit.dart' as _i3;
import 'package:beerville_cubit/presentation/splash/bloc/splash_cubit.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.HomeCubit>(_i3.HomeCubit());
    gh.lazySingleton<_i4.Navigation>(() => _i4.Navigation());
    gh.factory<_i5.SplashCubit>(() => _i5.SplashCubit());
    return this;
  }
}
