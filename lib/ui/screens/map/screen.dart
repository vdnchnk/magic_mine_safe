import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _mapController = MapController();

  static const ColorFilter greyscale = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
          initialCenter: LatLng(50.56, 30.53),
          initialZoom: 5,
          backgroundColor: Theme.of(context).primaryColor),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.flutter_map_example',
          tileBuilder: (context, tileWidget, tile) => ColorFiltered(
            colorFilter: greyscale,
            child: tileWidget,
          ),
        ),
        OverlayImageLayer(
          overlayImages: [
            OverlayImage(
              bounds: LatLngBounds(
                LatLng(54.80, 21.05),
                LatLng(43.4, 41.05),
              ),
              opacity: 0.3,
              imageProvider: AssetImage('assets/overlay.png'),
            ),
          ],
        ),
        CurrentLocationLayer()
      ],
    );
  }
}
