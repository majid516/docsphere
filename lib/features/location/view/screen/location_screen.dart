import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/location/view_model/location_cubit.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({super.key});

  final LatLng initialPosition = LatLng(20.5937, 78.9629); // India
  final LatLng hospitalPosition = LatLng(11.2588, 75.7804); // Kerala
  final Completer<GoogleMapController> mapController = Completer();

  @override
  Widget build(BuildContext context) {
    final locationCubit = context.read<LocationCubit>();
    locationCubit.getLocationUpdates(mapController);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          title: 'Location',
          action: () => Navigator.pop(context),
        ),
      ),
      body: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, state) {
          if (state is LocationLoading) {
            return Center(
              child: Text(
                'Loading...',
                style: AuthenticationSyles.hintTextStyle,
              ),
            );
          } else if (state is LocationLoaded) {
            return GoogleMap(
              key: const Key('google_map'),
              onMapCreated: (controller) {
                if (!mapController.isCompleted) {
                  mapController.complete(controller);
                  locationCubit.drawPolyline(state.currentPosition, hospitalPosition);
                }
              },
              initialCameraPosition: CameraPosition(target: initialPosition, zoom: 5),
              markers: state.markers,
              polylines: state.polylines,
            );
          } else {
            return Center(child: Text('Error loading location.'));
          }
        },
      ),
    );
  }
}
