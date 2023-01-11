import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/data/local/db/location_db.dart';
import 'package:flutter_weather/data/local/repository/local_repository.dart';
import 'package:get_it/get_it.dart';

// import '../../data/local/location_db.dart';
import '../home/forecast/forecast_location_bloc.dart';
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
  late ForecastLocationBloc bloc;
  late LocalRepository local;

  // late LocationDB db;

  @override
  void initState() {
    super.initState();
    bloc = context.read<ForecastLocationBloc>();
    local = GetIt.instance.get<LocalRepository>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context)),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
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
          child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                lat = value;
              },
              onSubmitted: (String lat) {
                onCoordSubmit(lat, long);
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Lat")),
        ),
        Expanded(
            child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  long = value;
                },
                onSubmitted: (String lat) {
                  onCoordSubmit(lat, long);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Long")))
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
    return BaseCard(
        child: Column(
      children: [checkRow, row],
    ));
  }

  void onCoordSubmit(String lat, String long) {
    if (lat.isNotEmpty && long.isNotEmpty) {
      var latD = double.tryParse(lat);
      var longD = double.tryParse(long);
      if (latD != null && longD != null) {
        var result = '$latD,$longD';

        local.insertLocation(
            LocationEntity(loc: result));
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
}
