import 'package:yelp/core/exceptions/error_constants/error_icons.dart';

class ErrorScreen {
  static Map<String, dynamic> displayMessage({
    Object? errorObject,
    String? errorCode,
  }) {
    Map<String, dynamic> errorMessage = {
      "errorMessage": "Opps. Something went wrong.",
      "errorIcon": errorIconMap["systemError"],
      "errorIconDisplay": true,
    };

    switch (errorCode) {
      case 'no_current_listing_data':
        errorMessage["errorMessage"] =
            "There are currently no restuarants in this area. Please adjust your search criteria.";
        break;

      //Default
      default:
        errorMessage["header"] =
            "Opps. Something went wrong. Please try again.";
        break;
    }

    return errorMessage;
  }
}
