import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/core/constants/app_constant/site_constants.dart';
import 'package:yelp/logic/service/yelp/yelp_service.dart';

class ListViewController extends AsyncNotifier<List<dynamic>> {
  @override
  Future<List<dynamic>> build() async {
    List<dynamic> listingList = await getListingExertps();

    return listingList;
  }

  /// **********************************************************************
  ///
  /// Get the initial exerpts
  ///
  /// **********************************************************************/

  Future<List<dynamic>> getListingExertps({
    String? location,
    int? offset,
  }) async {
    Response listingData =
        await ref.read(yelpServicesProvider.notifier).getListingExertpsService(
              location: location ?? defaultCity,
              offset: offset,
            );

    List<dynamic> listingList = listingData.data["businesses"] ?? [];

    return listingList;
  }

  /// **********************************************************************
  ///
  /// Get the initial exerpts
  ///
  /// **********************************************************************/

  Future<void> refreshListingFetch() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () => getListingExertps(),
    );
  }
}

final listViewControllerProvider =
    AsyncNotifierProvider<ListViewController, List<dynamic>>(() {
  return ListViewController();
});
