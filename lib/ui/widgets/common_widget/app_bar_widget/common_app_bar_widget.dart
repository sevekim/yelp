import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/common_text_style/body_small_styles.dart';

class CommonAppBarWidget extends StatelessWidget {
  const CommonAppBarWidget({
    super.key,
    this.title,
    this.surfaceTintColor,
    this.backgroundColor,
    this.foregroundColor,
    this.actions,
    this.bottom,
    this.leading,
  });
  final String? title;
  final Color? surfaceTintColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: surfaceTintColor ?? shadeColor[0],
      title: title != null
          ? Text(
              title!,
              style: commonBodySmallFont700Grey900,
            )
          : Container(),
      titleSpacing: 0,
      leading: leading,
      backgroundColor: surfaceTintColor ?? shadeColor[0],
      foregroundColor: foregroundColor,
      actions: actions,
      bottom: bottom,
    );
  }
}
