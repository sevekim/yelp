import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/padding_style/all_side_paddings.dart';
import 'package:yelp/ui/widgets/common_function/common_keyboard_unfocus.dart';

class CommonScaffoldStructure extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final void Function()? onTapFunction;
  final Future<bool> Function()? onWillPop;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  const CommonScaffoldStructure({
    super.key,
    required this.child,
    this.appBar,
    this.onTapFunction,
    this.onWillPop,
    this.padding,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: GestureDetector(
        onTap: onTapFunction ??
            () {
              KeyboardUnfocus.dismissKeyboard(context);
            },
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Scaffold(
            backgroundColor: backgroundColor ?? neutralGreyColor[50],
            appBar: appBar,
            bottomNavigationBar: bottomNavigationBar,
            floatingActionButton: floatingActionButton,
            body: SafeArea(
              child: Container(
                padding: padding ?? commonAllSidePadding16,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
