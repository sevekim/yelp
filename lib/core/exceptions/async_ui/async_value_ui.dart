import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/ui/widgets/common_widget/snackbar_widget/common_snackbar_widget.dart';

/// **********************************************************************
///
/// Show any exception errors:
/// ref.listen<AsyncValue>(
//   signInScreenControllerProvider,
//   (_, state) => state.showSnackbarOnError(context),
// );
///
/// **********************************************************************/

extension AsyncValueUI on AsyncValue {
  void showSnackbarOnError(BuildContext context) {
    if (!isRefreshing && hasError) {
      CommonSnackBarWidget.displaySnackBar(
        context: context,
        message: error.toString(),
      );
    }
  }
}
