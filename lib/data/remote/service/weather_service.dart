import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter_weather/data/remote/model/forecast_container_model.dart';
import 'package:flutter_weather/data/remote/model/weather_container_model.dart';

class WeatherService {
  static const _BASE_URL = 'https://api.weatherapi.com/v1/';
  static const apiKey = "552f756ef56448efa5e183126222112";

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  WeatherService() {
    _dio.interceptors.add(dioLoggerInterceptor);
  }

  Future<WeatherContainerModel> getWeather(String location) async {
    final response = await _dio.get(
      "current.json",
      queryParameters: {'key': apiKey, 'q': location},
    );
    return WeatherContainerModel.fromJson(response.data);
  }

  Future<List<String>> getLocationSearch(String location) async {
    final response = await _dio.get(
      "search.json",
      queryParameters: {'key': apiKey, 'q': location},
    );
    return List<String>.from(json.decode(response.data));
  }

  Future<ForecastContainerModel> getForecast(String location) async {
    final response = await _dio.get(
      "forecast.json",
      queryParameters: {
        'key': apiKey,
        'q': location,
        'days': 3,
        'alerts': "no"
      },
    );
    return ForecastContainerModel.fromJson(response.data);
  }
}
