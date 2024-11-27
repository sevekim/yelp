import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/core/constants/style/padding_style/left_bottom_right_paddings.dart';
import 'package:yelp/logic/controller/yelp/list_view_builder_controller.dart';
import 'package:yelp/ui/routes/listing/list_view_builder_content.dart';

class ListingViewBuilder extends ConsumerWidget {
  final List<dynamic> listingData;
  const ListingViewBuilder({
    super.key,
    required this.listingData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingList = ref.watch(
      listViewBuilderControllerProvider(listingData),
    );

    int initialIndicatorStatus = 0;

    //No more listing available
    if (listingData.length < 20) {
      initialIndicatorStatus = 2;
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (listingData.length > 19) {
          ref
              .read(listViewBuilderControllerProvider(listingData).notifier)
              .checkOnScrollInList(scrollInfo: scrollInfo);
        }

        return false;
      },
      child: Container(
        padding: commonLR16B8,
        child: ListViewListBuilderContent(
          listingList: listingList,
          initialIndicatorStatus: initialIndicatorStatus,
        ),
      ),
    );
  }
}
