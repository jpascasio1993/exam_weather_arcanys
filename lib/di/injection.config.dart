// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart'
    as _i5;
import 'package:weather_exam_arcanys/data/services/weather_service.dart' as _i4;
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart'
    as _i6;
import 'package:weather_exam_arcanys/di/core_dependencies/core_dependencies.dart'
    as _i7;
import 'package:weather_exam_arcanys/di/core_repositories/core_repositories.dart'
    as _i8;
import 'package:weather_exam_arcanys/di/core_store_dependencies/core_store_dependencies.dart'
    as _i9;

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
    final coreDependencies = _$CoreDependencies();
    final coreRepositories = _$CoreRepositories();
    final coreStoreDependencies = _$CoreStoreDependencies();
    gh.lazySingleton<List<int>>(
      () => coreDependencies.weatherStateIds(),
      instanceName: 'weather_dummy_ids',
    );
    gh.singleton<String>(
      coreDependencies.baseApiUrl(),
      instanceName: 'api_base_url',
    );
    gh.singleton<String>(
      coreDependencies.weatherApiKey(),
      instanceName: 'api_key',
    );
    gh.lazySingleton<_i3.Dio>(() => coreDependencies.getDio(
          baseUrl: gh<String>(instanceName: 'api_base_url'),
          apiKey: gh<String>(instanceName: 'api_key'),
        ));
    gh.lazySingleton<_i4.WeatherService>(() => coreDependencies.weatherService(
          dio: gh<_i3.Dio>(),
          baseUrl: gh<String>(instanceName: 'api_base_url'),
        ));
    gh.lazySingleton<_i5.IWeatherRepository>(
        () => coreRepositories.weatherRepository(
              service: gh<_i4.WeatherService>(),
              dummyIds: gh<List<int>>(instanceName: 'weather_dummy_ids'),
            ));
    gh.lazySingleton<_i6.WeatherStore>(() => coreStoreDependencies.weatherStore(
        weatherRepository: gh<_i5.IWeatherRepository>()));
    return this;
  }
}

class _$CoreDependencies extends _i7.CoreDependencies {}

class _$CoreRepositories extends _i8.CoreRepositories {}

class _$CoreStoreDependencies extends _i9.CoreStoreDependencies {}
