import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/logic/respository/yelp/yelp_repository.dart';

class YelpServices extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<Response> getListingExertpsService({
    String? location,
    int? offset,
  }) async {
    final listingProvider = ref.read(yelpListingRepositoryProvider.notifier);

    Map<String, dynamic> parameter = {
      "location": location,
      "offset": offset ?? 0,
    };

    Response listings = await listingProvider.getListings(
      params: parameter,
    );

    return listings;
  }
}

final yelpServicesProvider = AsyncNotifierProvider<YelpServices, void>(() {
  return YelpServices();
});
