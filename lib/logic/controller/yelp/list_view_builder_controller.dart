// ignore_for_file: avoid_renaming_method_parameters

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/logic/controller/yelp/list_view_controller.dart';

import 'list_view_builder_indicator_controller.dart';

class ListViewBuilderController
    extends AutoDisposeFamilyNotifier<List<dynamic>, List<dynamic>?> {
  @override
  List<dynamic> build(List<dynamic>? listingData) {
    List<dynamic>? listingList = listingData ?? [];

    return listingList;
  }

  /// **********************************************************************
  ///
  /// Get the initial exerpts
  ///
  /// **********************************************************************/

  int listingCountsWhileInFetch = 0;
  bool isFetching = false;
  bool hasMoreListings = true;

  /// **********************************************************************
  ///
  /// On Scroll
  ///
  /// **********************************************************************/

  Future<void> checkOnScrollInList({
    required ScrollNotification scrollInfo,
  }) async {
    if (isFetching ||
        !hasMoreListings ||
        listingCountsWhileInFetch == state.length) return;

    const double scrollThreshold = 2500.0;
    final maxScroll = scrollInfo.metrics.maxScrollExtent;
    final currentScroll = scrollInfo.metrics.pixels;

    //Determine the scroll position
    if (maxScroll - currentScroll <= scrollThreshold) {
      isFetching = true;
      await triggerMoreListingFetch();
    }
  }

  /// **********************************************************************
  ///
  /// On Scroll
  ///
  /// **********************************************************************/

  Future<void> triggerMoreListingFetch() async {
    final indicatorProvider =
        ref.read(listViewBuilderIndicatorControllerProvider(0).notifier);

    try {
      listingCountsWhileInFetch = state.length;

      List<dynamic> additionalListing =
          await ref.read(listViewControllerProvider.notifier).getListingExertps(
                offset: listingCountsWhileInFetch,
              );

      if (additionalListing.length < 20) {
        hasMoreListings = false;

        //No more listing
        indicatorProvider.updateIndicatorStatus(
          indicatorStatus: 2,
        );
      }

      //Add
      state.addAll(additionalListing);
      state = List.of(state);

      isFetching = false;
    } catch (e) {
      indicatorProvider.updateIndicatorStatus(
        indicatorStatus: 1,
      );
    }
  }
}

/// **********************************************************************
///
/// List view tab controller provider
///
/// **********************************************************************/

final listViewBuilderControllerProvider = AutoDisposeNotifierProvider.family<
    ListViewBuilderController, List<dynamic>, List<dynamic>?>(() {
  return ListViewBuilderController();
});
