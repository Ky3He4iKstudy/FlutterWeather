import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/domain/entity/forecast_dto.dart';
import 'package:flutter_weather/presentation/home/forecast/forecast_location_bloc.dart';
import 'package:flutter_weather/presentation/home/forecast/forecast_location_event.dart';
import 'package:flutter_weather/presentation/home/forecast/forecast_location_state.dart';
import 'package:flutter_weather/presentation/home/widget/daily_card.dart';
import 'package:flutter_weather/presentation/home/widget/hourly_card.dart';
import 'package:flutter_weather/presentation/home/widget/main_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ForecastLocationBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<ForecastLocationBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Weather"),
          leading: const Icon(Icons.home),
          actions: [
            IconButton(
                onPressed: () => bloc.add(const GetForecastLocationEvent()),
                icon: const Icon(Icons.refresh)),
            IconButton(
                onPressed: () => Navigator.pushNamed(context, "/settings"),
                icon: const Icon(Icons.settings))
          ],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    final appTheme = Theme.of(context);

    return BlocBuilder<ForecastLocationBloc, ForecastLocationState>(
      builder: (context, state) {
        if (state is ForecastLocationLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ForecastLocationErrorState) {
          return Center(
              child: Text(state.message,
                  style: appTheme.textTheme.titleLarge
                      ?.copyWith(color: appTheme.colorScheme.primary)));
        }
        if (state is ForecastLocationSuccessState) {
          return _buildWeatherScreen(state.forecastDtos);
        }
        return Center(
          child: ElevatedButton(
            child: const Text("Fetch Data"),
            onPressed: () {
              bloc.add(const GetForecastLocationEvent());
            },
          ),
        );
      },
    );
  }

  Widget _buildWeatherScreen(List<ForecastDto> forecastDtos) {
    var forecasts = forecastDtos.map((e) => _buildWeatherComponent(e)).toList();
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: forecasts,
    ));
  }

  Widget _buildWeatherComponent(ForecastDto forecastDto) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(forecastDto.location),
        MainComponent(
            temperature: forecastDto.days[0].day.avgtemp_c,
            minTemperature: forecastDto.days[0].day.mintemp_c,
            maxTemperature: forecastDto.days[0].day.maxtemp_c,
            weatherDescription: forecastDto.days[0].day.condition.text),
        HourlyCard(hourlyListInfo: forecastDto.days[0].hours),
        DailyCard(daysInfo: forecastDto.days)
      ],
    );
  }

  void Function() deleteWeather(String location) {
    return () => bloc.add(RemoveLocationEvent(location: location));
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
