import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../util/func_util.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController
  var title = "Home".obs;

  var loadingMaps = false.obs;
  var isLoadingMaps = true.obs;
  late GoogleMapController mapController;
  var currentLat = 0.0.obs;
  var currentLng = 0.0.obs;
  final count = 0.obs;

  Set<Polygon> polygon = HashSet<Polygon>();
  Set<Polyline> polyLine = HashSet<Polyline>();

  Map<PolylineId, Polyline> polylines = {};
  PolylinePoints polylinePoints = PolylinePoints();

  // created list of locations to display polygon
  List<LatLng> points = [];

  @override
  void onInit() {
    // getCurrentLocation();
    // getPolylineRoute();
    super.onInit();
  }

  void getCurrentLocation() async {
    if (await Permission.location.request().isGranted) {
      var resLocation = await Geolocator.getCurrentPosition();
      currentLat.value = resLocation.latitude;
      currentLng.value = resLocation.longitude;
      isLoadingMaps.value = false;
      // Either the permission was already granted before or the user just granted it.
    }
  }

  void getAddressByLatLng() async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      currentLat.value,
      currentLng.value,
    );
    logKey(placemarks[0]);
    logKey("LatLng", "${currentLat.value},${currentLng.value}");
  }

  void drawPolylines() {
    // points.add(LatLng(currentLat.value, currentLng.value));
    polyLine.add(
      Polyline(
        polylineId: PolylineId(points.length.toString()),
        color: Colors.blue,
        patterns: [PatternItem.dash(20.0), PatternItem.gap(10)],
        width: 3,
        points: points,
      ),
    );
    update();
  }

  void getPolylineRoute() async {
    // _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyAPngCtyOsTtY-5MRHW4kuPFY8Ccr5i42g",
      PointLatLng(currentLat.value, currentLng.value),
      PointLatLng(-6.290746, 107.003843),
      // travelMode: TravelMode.driving,

      // wayPoints: [
      //   PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria"),
      // ],
    );
    logKey("result.points.length", result.points.length);
    logKey("result.points.length", "${currentLat.value}, ${currentLng.value}");
    logKey("result.points.length", result.status);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        points.add(LatLng(point.latitude, point.longitude));
      });
    }

    addPolyLine();
    // }
  }

  addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline =
        Polyline(polylineId: id, color: Colors.red, points: points);
    polylines[id] = polyline;
    // setState(() {});
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
