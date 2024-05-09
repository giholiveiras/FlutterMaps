import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState () =>_PrincipalState

    (

  );
}

class _PrincipalState extends State <Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('ITÁLIA, MILÃO'),
            foregroundColor: Colors.white,

            centerTitle: true,
            backgroundColor: Colors.black
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(45.4637, 9.18817), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: [
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(45.4637, 9.18817),
                          builder: (ctx) =>
                              Container(
                                child: Icon(Icons.location_on, color: Colors.red),
                              )
                      )
                    ]
                )
              ],)
          ],)
    );
  }
}

