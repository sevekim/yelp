import 'package:flutter/material.dart';
import 'package:yelp/logic/model/yelp_model.dart';
import 'package:yelp/ui/routes/listing/infinite_scroll_indicator/infinite_scroll_indicator.dart';
import 'package:yelp/ui/routes/listing/single_exerpt_view/single_exerpt_view.dart';

class SingleListView extends StatelessWidget {
  const SingleListView({
    super.key,
    required this.listingList,
    required this.initialIndicatorStatus,
    required this.index,
  });

  final List listingList;
  final int initialIndicatorStatus;
  final int index;

  @override
  Widget build(BuildContext context) {
    YelpModel listingExerpts = YelpModel.fromMap(
      listingList[index],
    );

    Widget singleListing = ListViewSingleListingItem(
      listingExerpts: listingExerpts,
    );

    return index == listingList.length - 1
        ? Column(
            children: [
              Container(
                child: singleListing,
              ),
              ListViewListBuilderIndicator(
                initialStatus: initialIndicatorStatus,
              ),
            ],
          )
        : singleListing;
  }
}
