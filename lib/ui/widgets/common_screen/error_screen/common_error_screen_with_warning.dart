import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/padding_style/bottom_paddings.dart';
import 'package:yelp/core/constants/style/padding_style/left_bottom_right_paddings.dart';
import 'package:yelp/core/constants/style/padding_style/top_paddings.dart';
import 'package:yelp/core/constants/style/text_style/common_text_style/body_medium_styles.dart';
import 'package:yelp/ui/widgets/common_widget/button_widget/common_text_button.dart';

/// **********************************************************************
///
/// Error type:
///   noProperties
///   noWiFi
///   systemError
///
/// **********************************************************************/

class CommonErrorScreenWithWarning extends StatelessWidget {
  final Map<String, dynamic> errorMessage;
  final void Function()? errorActionOnPressed;
  const CommonErrorScreenWithWarning({
    super.key,
    required this.errorMessage,
    this.errorActionOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: commonTopPadding24,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Error Icon
            errorMessage["errorIconDisplay"] == true
                ? Container(
                    padding: commonBottomPadding20,
                    child: Icon(
                      errorMessage["errorIcon"],
                      color: neutralGreyColor[500],
                      size: 40,
                    ),
                  )
                : Container(),

            //Error Writing
            Container(
              padding: commonLBRPadding16,
              child: Text(
                errorMessage["errorMessage"],
                textAlign: TextAlign.center,
                style: commonBodyMediumFont500Grey500,
              ),
            ),
            errorActionOnPressed != null
                ? CommonTextButton(
                    onPressed: errorActionOnPressed,
                    label: 'Try again',
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
