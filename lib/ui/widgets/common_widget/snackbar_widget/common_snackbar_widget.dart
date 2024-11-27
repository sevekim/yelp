import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';

class CommonSnackBarWidget {
  static ScaffoldFeatureController displaySnackBar({
    required BuildContext context,
    String actionLabel = "DISMISS",
    String message = 'Temporarily disabled',
    SnackBarBehavior? behavior,
    void Function()? onPressed,
  }) {
    SnackBar snackBar = SnackBar(
      backgroundColor: primaryBlueColor[1000],
      content: Text(
        message,
      ),
      action: SnackBarAction(
        label: actionLabel,
        onPressed: onPressed ?? () {},
      ),
      behavior: behavior ?? SnackBarBehavior.fixed,
    );

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    return ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
