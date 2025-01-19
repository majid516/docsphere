import 'dart:convert';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final LatLng  hospitalLocation = LatLng(11.0168, 76.9558);
  final LatLng currentLocation = LatLng(11.2588, 75.7804);
  List<LatLng> polylineCoordinates = [];

  @override
  void initState() {
    super.initState();
    _getPolyline();
  }

  Future<void> _getPolyline() async {
    final url = Uri.parse(
        "https://router.project-osrm.org/route/v1/driving/${currentLocation.longitude},${currentLocation.latitude};${hospitalLocation.longitude},${hospitalLocation.latitude}?geometries=geojson");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      final coordinates = decoded['routes'][0]['geometry']['coordinates'];

      setState(() {
        polylineCoordinates =
            coordinates.map<LatLng>((c) => LatLng(c[1], c[0])).toList();
      });
    } else {
      debugPrint("Error fetching route");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          title: 'Location',
          action: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: FlutterMap(
        options: MapOptions(initialCenter: currentLocation, initialZoom: 8.0),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          PolylineLayer(
            polylines: [
              Polyline(
                points: polylineCoordinates,
                strokeWidth: 5.0,
                color: Colors.blue,
              ),
            ],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: currentLocation,
                width: 80,
                height: 80,
                child: Icon(Icons.location_pin, color: Colors.red, size: 40),
              ),
              Marker(
                point: hospitalLocation,
                width: 80,
                height: 80,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      color: MyColors.whiteColor,
                    ),
                    Icon(Icons.medical_services_rounded,
                        color: MyColors.primaryColor, size: 40),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
