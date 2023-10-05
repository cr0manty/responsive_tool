import 'package:flutter/widgets.dart';
import 'package:responsive_tool/src/responsive_util.dart';
import 'package:responsive_tool/src/size_factory.dart';

extension ResponsiveExtension on BuildContext {
  ResponsiveUtil responsive([SizeFactory? sizeFactory]) {
    return ResponsiveUtil(
      this,
      sizeFactory ?? SizeFactory.normal(),
    );
  }
}
