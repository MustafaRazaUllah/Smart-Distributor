import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class AppConstants {
  /*
    App Name
  */
  static const String appName = 'ShowUp to MeetUp';

  /*
    In OverAll App outline and rounded Radius 
  */
  static const Radius outlineWidgetRadius = Radius.circular(10);
  static const Radius roundedWidgetRadius = Radius.circular(12);

  /*
    Base-URL of Server Side APIs.
  */
  static const String baseURL = "https://meetupapp.shekhobaba.com/api/";

  /*
    Google Map API Key for access Map 
  */
  static String map_apikey = 'AIzaSyCzc4Gml6I-lOx0NmL7jl6Zfi3iKA85wkM';
  //     Platform.isIOS ? map_apikey_ios : map_apikey_android;
  // static const String map_apikey_ios =
  //     'AIzaSyCuEbcQMcC672x3BggzLl5CWPCR13C0N6k';
  // static const String map_apikey_android =
  //     'AIzaSyAn5snmpPueoPEREjtn6F08gzNYV9scUX0';

  /*
    Auto Complete Google Map API Radius 
  */
  static const int autocomplete_radius = 50000;

  /*
    Nearby Seach Google Map API Radius 
  */
  static const int nearby_radius = 500;

  /*
    Initial Camera Position Lat and Lng 
    In any case, if device not getting LatLng then by defult this latlng use. 
  */
  static const LatLng initialCameraPosition = const LatLng(28.4212, 70.2989);

  static double checkIn_Out_Radius = 60.0; // in meters
}
