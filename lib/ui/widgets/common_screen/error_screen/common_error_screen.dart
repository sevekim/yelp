import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/padding_style/all_side_paddings.dart';
import 'package:yelp/ui/widgets/common_widget/structure_widget/common_scaffold.dart';

class CommonErrorScreen extends StatelessWidget {
  final FlutterErrorDetails details;
  const CommonErrorScreen({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return CommonScaffoldStructure(
      child: Center(
        child: Container(
          padding: commonAllSidePadding16,
          alignment: Alignment.center,
          child: Text(
            "Error: ${details.toString()}",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
