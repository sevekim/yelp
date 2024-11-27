import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/border_style/border_radius_style.dart';
import 'package:yelp/core/constants/style/button_style/button_style.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/common_text_style/body_medium_styles.dart';
import 'package:yelp/ui/widgets/common_widget/loading_widget/common_loading_circle.dart';

class CommonTextButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final TextStyle? style;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;

  const CommonTextButton({
    super.key,
    required this.label,
    this.onPressed,
    this.style,
    this.isLoading = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isLoading ? () {} : onPressed,
      style: TextButton.styleFrom(
        fixedSize: commonButtonHeight,
        shape: RoundedRectangleBorder(
          borderRadius: commonAllSideBorderRadius8,
        ),
        padding: padding,
        foregroundColor: primaryBlueColor[800],
      ),
      child: isLoading
          ? const CommonLoadingCircle(
              isSmall: true,
            )
          : Text(
              label,
              style: onPressed != null
                  ? style ?? commonBodyMediumFont500Blue600
                  : commonBodyMediumFont500Blue400,
            ),
    );
  }
}
