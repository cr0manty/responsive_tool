library responsive_tool;

import 'package:flutter/widgets.dart';
import 'package:responsive_tool/src/responsive_util.dart';
import 'package:responsive_tool/src/size_factory.dart';

abstract class ResponsiveTool {
  static SizeFactory sizeFactory = SizeFactory.normal();

  static Size size(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).size;
  }

  static Orientation orientation(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).orientation;
  }

  static bool isPortrait(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isPortrait;
  }

  static bool isLandscape(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isLandscape;
  }

  static double responsiveHeight(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).responsiveHeight;
  }

  static double responsiveWidth(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).responsiveWidth;
  }

  static bool isLarge(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isLarge;
  }

  static bool isMedium(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isMedium;
  }

  static bool isSmall(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isSmall;
  }

  static bool isXSmall(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isXSmall;
  }

  static bool isXLarge(BuildContext context) {
    return ResponsiveUtil(context, sizeFactory).isXLarge;
  }
}
