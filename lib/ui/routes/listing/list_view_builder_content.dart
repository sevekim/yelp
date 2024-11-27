import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/ui/routes/listing/list_view_builder_single_item.dart';

class ListViewListBuilderContent extends ConsumerWidget {
  const ListViewListBuilderContent({
    super.key,
    required this.listingList,
    required this.initialIndicatorStatus,
  });

  final List listingList;
  final int initialIndicatorStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      controller: PrimaryScrollController.of(context),
      itemCount: listingList.length,
      itemBuilder: (context, index) {
        return SingleListView(
          index: index,
          listingList: listingList,
          initialIndicatorStatus: initialIndicatorStatus,
        );
      },
    );
  }
}
