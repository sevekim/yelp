import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/border_style/border_radius_style.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';

/// **********************************************************************
///
///  Container Box Decorationg
///
/// **********************************************************************/

final BoxDecoration commonContainerBorder24Shade0 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius24,
  color: shadeColor[0],
);

final BoxDecoration commonContainerBorder24Grey10 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius24,
  color: neutralGreyColor[100],
);

final BoxDecoration commonContainerBorder8Grey100 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius8,
  color: neutralGreyColor[100],
);

final BoxDecoration commonContainerBorder16Grey100 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius16,
  color: neutralGreyColor[100],
);

final BoxDecoration commonContainerRadiu8Grey200 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius8,
  border: Border.all(
    color: neutralGreyColor[200]!,
    width: 1,
  ),
);

final BoxDecoration commonContainerRadiu8Grey200WithWhiteBackground =
    BoxDecoration(
  borderRadius: commonAllSideBorderRadius8,
  border: Border.all(
    color: neutralGreyColor[200]!,
    width: 1,
  ),
  color: shadeColor[0],
);

final BoxDecoration commonContainerRadiu8Blue600WithBGBlue100 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius8,
  border: Border.all(
    color: primaryBlueColor[600]!,
    width: 1,
  ),
  color: primaryBlueColor[100],
);

final BoxDecoration commonRoundedBorderGreyContainer = BoxDecoration(
  borderRadius: commonAllSideBorderRadius24,
  border: Border.all(
    color: neutralGreyColor[300]!,
    width: 1,
  ),
);

final BoxDecoration commonRoundedBorderBlueContainer = BoxDecoration(
  borderRadius: commonAllSideBorderRadius24,
  border: Border.all(
    color: primaryBlueColor[600]!,
    width: 1,
  ),
);

final BoxDecoration commonContainerTopWidth2Grey100 = BoxDecoration(
  border: Border(
    top: BorderSide(
      width: 2.0,
      color: neutralGreyColor[100]!,
    ),
  ),
  color: shadeColor[0],
);

final BoxDecoration commonContainerBottomWidth2Grey100 = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      width: 2.0,
      color: neutralGreyColor[100]!,
    ),
  ),
  color: shadeColor[0],
);

final BoxDecoration commonContainerBR8Blue100BorderAllBlue600 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius8,
  color: primaryBlueColor[100],
  border: Border.all(
    color: primaryBlueColor[600]!,
    width: 1,
  ),
);

final BoxDecoration commonContainerBR8Grey50BorderAllBlue200 = BoxDecoration(
  borderRadius: commonAllSideBorderRadius8,
  color: neutralGreyColor[50],
  border: Border.all(
    color: neutralGreyColor[200]!,
    width: 1,
  ),
);
