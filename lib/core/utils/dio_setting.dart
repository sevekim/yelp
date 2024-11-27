import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yelp/core/constants/app_constant/api_constants.dart';

import 'api_switcher.dart';

class DioSetting {
  /// **********************************************************************
  ///
  /// Dio instance
  ///
  /// **********************************************************************/

  static Dio dioInstance() {
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 100),
      baseUrl: ApiSwitcher.switchAPIURL(
        apiType: currentAPIType,
      ),
    );

    return Dio(options);
  }

  /// **********************************************************************
  ///
  /// Dio optional header
  ///
  /// **********************************************************************/

  Options httpHeader() {
    return Options(
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.authorizationHeader:
            'Bearer cA6AsgYtTp96t-3XEF5VXQyHGF_GOY9hgl_XqXvtUHPkHkIL5hlXQ3sUyhb4A5uNu2rjNmK-iOXvjWsYVfIfmerXhO8OY7qx9pQmm7CByEyd5ea8lZl_9XDv5kVGZ3Yx',
      },
    );
  }
}
