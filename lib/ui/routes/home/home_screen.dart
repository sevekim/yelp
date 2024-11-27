import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/core/constants/style/padding_style/all_side_paddings.dart';
import 'package:yelp/ui/routes/home/home_screen_listing_view.dart';
import 'package:yelp/ui/widgets/common_widget/structure_widget/common_scaffold.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonScaffoldStructure(
      padding: commonNoPadding,
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search location...',
            border: InputBorder.none,
          ),
          onChanged: (value) {},
        ),
      ),
      child: const HomeScreenListingView(),
    );
  }
}
