import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/padding_style/top_paddings.dart';
import 'package:yelp/core/constants/style/text_style/common_text_style/body_medium_styles.dart';
import 'package:yelp/logic/model/yelp_model.dart';
import 'package:yelp/ui/routes/listing/single_exerpt_view/parts/single_list_clip.dart';
import 'package:yelp/ui/widgets/common_widget/image_widget/common_circle_avatar_image_widget.dart';

class ListViewSingleListingItem extends StatelessWidget {
  const ListViewSingleListingItem({
    super.key,
    required this.listingExerpts,
  });

  final YelpModel listingExerpts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonTopPadding8,
      child: Card(
        child: ListTile(
          leading: CommonCircleAvatarImageWidget(
            imageURL: listingExerpts.imageUrl,
          ),
          title: Text(
            listingExerpts.name,
            style: commonBodyMediumFont500Grey900,
          ),
          subtitle: Text(
            listingExerpts.displayPhone,
            style: commonBodyMediumFont500Grey500,
          ),
          trailing: SingleListChip(
            text: listingExerpts.price,
            backgroundColor: successColor[100]!,
            textColor: errorColor[500]!,
          ),
        ),
      ),
    );
  }
}
