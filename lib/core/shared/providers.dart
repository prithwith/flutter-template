// import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_google_maps_webservices/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/constants/app_api_keys.dart';
import 'package:flutter_template/core/infrastructure/hive_database.dart';

final dioProvider = Provider((ref) => Dio());

final hiveProvider = Provider((ref) => HiveDatabase());

final placesProvider = Provider(
  (ref) => GoogleMapsPlaces(apiKey: AppApiKeys.key),
);

final locationUriProvider = Provider.family((ref, String query) {
  Uri uri = Uri.https(
    'maps.googleapis.com',
    'maps/api/place/autocomplete/json',
    {"input": query, "key": AppApiKeys.key},
  );
  return uri;
});
