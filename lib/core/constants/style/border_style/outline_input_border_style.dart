import 'package:flutter/material.dart';

import 'border_radius_style.dart';
import 'border_side_color.dart';

/// **********************************************************************
///
/// Outline Input Border style: Enabled
///
/// **********************************************************************/

OutlineInputBorder commonGreyEnabledBorder = OutlineInputBorder(
  borderSide: commonBorderSideGrey300,
  borderRadius: commonAllSideBorderRadius8,
);

OutlineInputBorder commonGreyEnabledRoundedBorder = OutlineInputBorder(
  borderSide: commonBorderSideGrey300,
  borderRadius: commonAllSideBorderRadius24,
);

/// **********************************************************************
///
/// Outline Input Border style: Focused
///
/// **********************************************************************/

OutlineInputBorder commonGreyFocusedBorder = OutlineInputBorder(
  borderSide: commonBorderSideBlue600,
  borderRadius: commonAllSideBorderRadius8,
);

/// **********************************************************************
///
/// Outline Input Border style: Disabled
///
/// **********************************************************************/

OutlineInputBorder commonGreyDisabledBorder = OutlineInputBorder(
  borderSide: commonBorderSideGrey200,
  borderRadius: commonAllSideBorderRadius8,
);

/// **********************************************************************
///
/// Outline Input Border style: Error
///
/// **********************************************************************/

OutlineInputBorder commonErrorBorder = OutlineInputBorder(
  borderSide: commonBorderSideError600,
  borderRadius: commonAllSideBorderRadius8,
);

/// **********************************************************************
///
/// Outline Input Border style: Error
///
/// **********************************************************************/

OutlineInputBorder commonErrorUnForusedBorder = OutlineInputBorder(
  borderSide: commonBorderSideError300,
  borderRadius: commonAllSideBorderRadius8,
);
