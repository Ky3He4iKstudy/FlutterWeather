import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/data/local/db/location_db.dart';
import 'package:flutter_weather/data/local/repository/local_repository.dart';
import 'package:flutter_weather/presentation/injector.dart';
import 'package:flutter_weather/presentation/settings/current_location/current_location_bloc.dart';
import 'package:get_it/get_it.dart';

import '../home/widget/base_card.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var isChecked = false;
  var lat = "";
  var long = "";
  late CurrentLocationBloc locBloc;

  // late ForecastLocationBloc bloc;
  late LocalRepository local;

  // late LocationDB db;

  @override
  void initState() {
    super.initState();
    locBloc = GetIt.instance.get<CurrentLocationBloc>();
    // bloc = context.read<ForecastLocationBloc>();
    local = GetIt.instance.get<LocalRepository>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CurrentLocationBloc>(
      create: (_) => injector()..add(const GetCurrentLocationEvent()),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Settings"),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
          ),
          body: _buildBody()),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<CurrentLocationBloc, CurrentLocationState>(
        builder: (context, state) {
      if (state is CurrentLocationGetting) {
        return const Center(child: CircularProgressIndicator());
      }
      var error = state is CurrentLocationUnavailable;
      if (state is CurrentLocationGot) {
        lat = state.lat.toString();
        long = state.long.toString();
      }
      var checkRow = Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          const Text("Use location coordinates"),
        ],
      );
      var coordRow = Row(
        children: [
          const Text("Coordinates:"),
          Expanded(
            child: TextFormField(
                initialValue: lat,
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  lat = value;
                },
                onFieldSubmitted: (String lat) {
                  onCoordSubmit(lat, long);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Lat")),
          ),
          Expanded(
              child: TextFormField(
                  initialValue: long,
                  keyboardType: TextInputType.number,
                  onChanged: (String value) {
                    long = value;
                  },
                  onFieldSubmitted: (String long) {
                    onCoordSubmit(lat, long);
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Long"))),
          MaterialButton(onPressed: onGpsClick, child: const Text("GPS"))
        ],
      );
      var cityRow = Row(
        children: [
          const Text("City:"),
          Expanded(
              child: TextField(
                  onSubmitted: (value) => onCitySubmit(value),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "City name")))
        ],
      );
      var row = isChecked ? coordRow : cityRow;
      var errorRow = Row(
        children: [
          error
              ? const Text("There are error getting location")
              : const Text("")
        ],
      );
      return Scaffold(
          appBar: AppBar(
            title: const Text("Settings"),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
          ),
          body: BaseCard(
              child: Column(
            children: [checkRow, row, errorRow],
          )));
    });
  }

  void onCoordSubmit(String lat, String long) {
    if (lat.isNotEmpty && long.isNotEmpty) {
      var latD = double.tryParse(lat);
      var longD = double.tryParse(long);
      if (latD != null && longD != null) {
        var result = '$latD,$longD';

        local.insertLocation(LocationEntity(loc: result));
        Navigator.pop(context);
      }
    }
  }

  void onCitySubmit(String city) {
    if (city.isNotEmpty) {
      local.insertLocation(LocationEntity(loc: city));
      Navigator.pop(context);
    }
  }

  void onGpsClick() {
    locBloc.add(const GetCurrentLocationEvent());
  }
}
