import 'package:yelp/core/constants/app_constant/api_constants.dart';

class ApiSwitcher {
  static String switchAPIURL({
    String apiType = "devAPI",
  }) {
    String selectedURL = '';

    switch (apiType) {
      case "devAPI":
        selectedURL = yelpDemoAPI['devAPI']!;
        break;
      case "qaAPI":
        selectedURL = yelpDemoAPI['qaAPI']!;
        break;
      case "stageAPI":
        selectedURL = yelpDemoAPI['stageAPI']!;
        break;
      case "prodAPI":
        selectedURL = yelpDemoAPI['prodAPI']!;
        break;
    }

    return selectedURL;
  }
}
