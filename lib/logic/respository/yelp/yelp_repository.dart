import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/core/utils/dio_setting.dart';

class YelpListingRepository extends AutoDisposeNotifier<void> {
  final Dio _dio;

  YelpListingRepository(this._dio);

  DioSetting dioSetting = DioSetting();

  @override
  FutureOr build() {
    return null;
  }

  Future<Response> getListings({
    Map<String, dynamic>? params,
  }) async {
    try {
      Response response = await _dio.get(
        'https://api.yelp.com/v3/businesses/search?',
        options: dioSetting.httpHeader(),
        queryParameters: params,
      );

      return response;
    } catch (e) {
      throw Exception();
    }
  }
}

final yelpListingRepositoryProvider =
    AutoDisposeNotifierProvider<YelpListingRepository, void>(() {
  Dio dio = DioSetting.dioInstance();

  return YelpListingRepository(dio);
});
