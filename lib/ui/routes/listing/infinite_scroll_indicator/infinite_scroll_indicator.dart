import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/core/constants/style/padding_style/bottom_paddings.dart';
import 'package:yelp/core/exceptions/errors/error_screen/error_screen.dart';
import 'package:yelp/logic/controller/yelp/list_view_builder_indicator_controller.dart';
import 'package:yelp/ui/widgets/common_screen/error_screen/common_error_screen_with_warning.dart';

class ListViewListBuilderIndicator extends ConsumerWidget {
  final int? initialStatus;
  const ListViewListBuilderIndicator({
    super.key,
    this.initialStatus,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicator = ref.watch(
      listViewBuilderIndicatorControllerProvider(initialStatus),
    );

    return Container(
      padding: commonBottomPadding35,
      child: indicator == 0
          ? const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            )
          : indicator == 1
              //Error
              ? CommonErrorScreenWithWarning(
                  errorMessage: ErrorScreen.displayMessage(
                    errorObject: "general_error",
                  ),
                )
              //No more listings
              : indicator == 2
                  ? CommonErrorScreenWithWarning(
                      errorMessage: ErrorScreen.displayMessage(
                        errorObject: "no_current_listing_data",
                      ),
                    )
                  //No indicator
                  : Container(),
    );
  }
}
