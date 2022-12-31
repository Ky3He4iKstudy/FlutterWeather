import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

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
  var city = "";
  late ForecastLocationBloc bloc;

  // late LocationDB db;

  @override
  void initState() {
    super.initState();
    bloc = context.read<ForecastLocationBloc>();
    // db = context.read<LocationDB>();
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
    var row = Row(
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
        isChecked
            ? Row(
                children: [
                  Text("Coordinates:"),
                  TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (String value) {
                        lat = value;
                      },
                      onSubmitted: (String lat) {
                        onCoordSubmit(lat, long);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Lat")),
                  TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (String value) {
                        long = value;
                      },
                      onSubmitted: (String lat) {
                        onCoordSubmit(lat, long);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Long"))
                ],
              )
            : Row(
                children: [
                  Text("City:"),
                  TextField(
                      onChanged: (String value) {
                        city = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "City name"))
                ],
              ),
      ],
    );

    return BaseCard(child: row);
  }

  void onCoordSubmit(String lat, String long) {
    if (lat.isNotEmpty && long.isNotEmpty) {
      var latD = double.tryParse(lat);
      var longD = double.tryParse(long);
      if (latD != null && longD != null) {
        var result = '$latD,$longD';

        // db.locationDao.insertEntity(LocationEntitysCompanion(
        //     cityName: Value(city), loc: Value(result)));
        Navigator.pop(context);
      }
    }
  }
}
