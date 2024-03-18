import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => MapsPageState();
}

class MapsPageState extends State<MapsPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          zoom: 15,
          target: LatLng(41.01166917218091, 28.983355687202312),
        ),
        markers: {
          const Marker(
            markerId: MarkerId("Hünkar Sofrası"),
            position: LatLng(41.012739410754655, 28.978807582307617),
            infoWindow: InfoWindow(title: "Hünkar Sofrası"),
          ),
          const Marker(
            markerId: MarkerId("Safran Restoran"),
            position: LatLng(41.01000743662969, 28.98321517903099),
            infoWindow: InfoWindow(title: "Safran Restoran"),
          ),
          const Marker(
            markerId: MarkerId("Deniz Köşesi"),
            position: LatLng(41.01398657862989, 28.979476592511833),
            infoWindow: InfoWindow(title: "Deniz Köşesi"),
          ),
        },
      ),
    );
  }
}
