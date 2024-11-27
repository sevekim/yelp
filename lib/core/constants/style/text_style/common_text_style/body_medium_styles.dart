import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/font_style.dart';

/// **********************************************************************
///
///
///
/// bodyMedium:
///
///
///
/// **********************************************************************/

CustomFontStyle customFontStyle = CustomFontStyle();

/// **********************************************************************
///
/// FontWeight.w400,
///
/// **********************************************************************/

TextStyle commonBodyMediumFont400Grey400 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w400,
  color: neutralGreyColor[400],
);

TextStyle commonBodyMediumFont400Grey900 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w400,
  color: neutralGreyColor[900],
);

/// **********************************************************************
///
/// FontWeight.w500, Grey
///
/// **********************************************************************/

TextStyle commonBodyMediumFont500Grey50 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[50],
);

TextStyle commonBodyMediumFont500Grey400 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[400],
);

TextStyle commonBodyMediumFont500Grey500 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[500],
);

TextStyle commonBodyMediumFont500Grey900 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[900],
);

/// **********************************************************************
///
/// FontWeight.w500, Blue
///
/// **********************************************************************/

TextStyle commonBodyMediumFont500Blue400 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w500,
  color: primaryBlueColor[400],
);

TextStyle commonBodyMediumFont500Blue600 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w500,
  color: primaryBlueColor[600],
);

/// **********************************************************************
///
/// FontWeight.w700, Blue
///
/// **********************************************************************/

TextStyle commonBodyMediumFont700Blue400 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w700,
  color: primaryBlueColor[400],
);

TextStyle commonBodyMediumFont700Blue600 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w700,
  color: primaryBlueColor[600],
);

/// **********************************************************************
///
/// FontWeight.w700, Grey
///
/// **********************************************************************/

TextStyle commonBodyMediumFont700Grey900 = customFontStyle.bodyMedium(
  fontWeight: FontWeight.w700,
  color: neutralGreyColor[900],
);
