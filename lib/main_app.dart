import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yelp/core/constants/style/color_constant/color_constants.dart';
import 'package:yelp/core/routes/app_route.dart';

import 'ui/widgets/common_screen/error_screen/common_error_screen.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      builder: (context, widget) {
        ErrorWidget.builder = (errorDetails) => CommonErrorScreen(
              details: errorDetails,
            );

        if (widget != null) return widget;
        throw ('widget is null');
      },
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'manrope',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: commonPrimarySwatch,
        ),
      ),
    );
  }
}
