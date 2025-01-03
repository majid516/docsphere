import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:docshpere/core/constants/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationState {
  const LocationState();
}

class LocationLoading extends LocationState {}

class LocationLoaded extends LocationState {
  final LatLng currentPosition;
  final Set<Marker> markers;
  final Set<Polyline> polylines;

  LocationLoaded({
    required this.currentPosition,
    required this.markers,
    required this.polylines,
  });
}

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationLoading());

  final Location locationController = Location();

  Future<void> getLocationUpdates(Completer<GoogleMapController> mapController) async {
    try {
      // Check and request location service
      if (!(await locationController.serviceEnabled()) &&
          !(await locationController.requestService())) {
        return;
      }

      // Check and request location permission
      if ((await locationController.hasPermission()) == PermissionStatus.denied &&
          (await locationController.requestPermission()) != PermissionStatus.granted) {
        return;
      }

      // Listen to location changes
      locationController.onLocationChanged.listen((LocationData locationData) {
        if (locationData.latitude != null && locationData.longitude != null) {
          final LatLng currentPosition = LatLng(locationData.latitude!, locationData.longitude!);

          emit(LocationLoaded(
            currentPosition: currentPosition,
            markers: {
              Marker(
                markerId: MarkerId('currentLocation'),
                position: currentPosition,
                icon: BitmapDescriptor.defaultMarker,
              ),
              Marker(
                markerId: MarkerId('hospital'),
                position: LatLng(11.2588, 75.7804),
                icon: BitmapDescriptor.defaultMarker,
              ),
            },
            polylines: {},
          ));

          moveCamera(currentPosition, mapController);
        }
      });
    } catch (_) {
      emit(LocationLoading());
    }
  }

  Future<void> drawPolyline(LatLng start, LatLng end) async {
    PolylinePoints polylinePoints = PolylinePoints();
    List<LatLng> polylineCoordinates = [];

    final result = await polylinePoints.getRouteBetweenCoordinates(
      request: PolylineRequest(
        origin: PointLatLng(start.latitude, start.longitude),
        destination: PointLatLng(end.latitude, end.longitude),
        mode: TravelMode.driving,
      ),
      googleApiKey: GOOGLE_MAP_API_KEY,
    );

    if (result.points.isNotEmpty) {
      polylineCoordinates.addAll(result.points.map((e) => LatLng(e.latitude, e.longitude)));
    }

    final currentState = state;
    if (currentState is LocationLoaded) {
      emit(LocationLoaded(
        currentPosition: currentState.currentPosition,
        markers: currentState.markers,
        polylines: {
          Polyline(
            polylineId: PolylineId('route'),
            points: polylineCoordinates,
            color: Colors.blue,
            width: 5,
          ),
        },
      ));
    }
  }

  Future<void> moveCamera(
      LatLng position, Completer<GoogleMapController> mapController) async {
    if (mapController.isCompleted) {
      final controller = await mapController.future;
      final cameraPosition = CameraPosition(target: position, zoom: 15);
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }
  }
}
