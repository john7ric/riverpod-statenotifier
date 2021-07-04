import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_riverpod_ddd/application/weather_notifier.dart';
import 'package:weather_riverpod_ddd/infrastructure/weather_repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>(
  (ref) => FakeWeatherRepository(),
);

final StateNotifierProvider<WeatherNotifier, WeatherState>
    weatherNotifierProvider = StateNotifierProvider(
  (ref) => WeatherNotifier(ref.watch(weatherRepositoryProvider)),
);
