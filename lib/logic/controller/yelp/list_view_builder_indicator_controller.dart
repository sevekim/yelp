// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewBuilderIndicatorController extends FamilyNotifier<int, int?> {
  @override
  int build(int? initialStatus) {
    //0 : Circular loading
    //1 : Error
    //2 : No more listing
    //3 : No indicator
    return initialStatus ?? 0;
  }

  /// **********************************************************************
  ///
  /// On Scroll
  ///
  /// **********************************************************************/

  void updateIndicatorStatus({
    required int indicatorStatus,
  }) {
    state = indicatorStatus;
  }
}

/// **********************************************************************
///
/// List view tab controller provider
///
/// **********************************************************************/

final listViewBuilderIndicatorControllerProvider =
    NotifierProvider.family<ListViewBuilderIndicatorController, int, int?>(() {
  return ListViewBuilderIndicatorController();
});
