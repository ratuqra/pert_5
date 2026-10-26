import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HalamanMaps extends StatefulWidget {
  const HalamanMaps({super.key});

  @override
  State<HalamanMaps> createState() => _HalamanMapsState();
}

class _HalamanMapsState extends State<HalamanMaps> {
  static const LatLng lokasiKampus = LatLng(
    -6.897070485659831,
    107.63717566272989,
  );

  final Set<Marker> marker = {
    const Marker(
      markerId: MarkerId('lokasi_kampus'),
      position: lokasiKampus,
      infoWindow: InfoWindow(
        title: 'ITENAS',
        snippet: 'Institut Teknologi Nasional Bandung',
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Peta ITENAS')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: lokasiKampus,
          zoom: 15,
        ),
        markers: marker,
      ),
    );
  }
}
