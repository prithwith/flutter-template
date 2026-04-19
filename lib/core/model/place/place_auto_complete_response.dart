import 'dart:convert';

import 'package:flutter_template/core/utils/autocomplete_prediction.dart';

/// The Autocomplete response contains place predictions and status
class PlaceAutoCompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;
  final String? errorMessage;

  PlaceAutoCompleteResponse({this.status, this.predictions, this.errorMessage});

  factory PlaceAutoCompleteResponse.fromJson(Map<String, dynamic> json) {
    return PlaceAutoCompleteResponse(
      status: json['status'] as String?,
      errorMessage: json['error_message'] as String?,
      predictions: json['predictions']
          ?.map<AutocompletePrediction>(
            (json) => AutocompletePrediction.fromJson(json),
          )
          .toList(),
    );
  }

  static PlaceAutoCompleteResponse parseAutocompleteResult(
    String responseBody,
  ) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();

    return PlaceAutoCompleteResponse.fromJson(parsed);
  }
}
