import 'package:flutter/widgets.dart';
import 'package:responsive_tool/src/size_factory.dart';

class ResponsiveUtil {
  final SizeFactory _sizeFactory;
  final BuildContext _context;

  ResponsiveUtil(
    this._context,
    this._sizeFactory,
  );

  Size get size {
    return MediaQuery.of(_context).size;
  }

  Orientation get orientation {
    return MediaQuery.of(_context).orientation;
  }

  bool get isPortrait {
    return MediaQuery.of(_context).orientation == Orientation.portrait;
  }

  bool get isLandscape {
    return MediaQuery.of(_context).orientation == Orientation.landscape;
  }

  double get responsiveHeight {
    if (isPortrait) {
      return size.height;
    }

    return size.width;
  }

  double get responsiveWidth {
    if (isPortrait) {
      return size.width;
    }

    return size.height;
  }

  bool get isLarge {
    return responsiveWidth > _sizeFactory.large;
  }

  bool get isMedium {
    return responsiveWidth > _sizeFactory.mediumMin &&
        responsiveWidth < _sizeFactory.mediumMax;
  }

  bool get isSmall {
    return responsiveWidth < _sizeFactory.small;
  }

  bool get isXSmall {
    return responsiveWidth > _sizeFactory.xLarge;
  }

  bool get isXLarge {
    return responsiveWidth < _sizeFactory.xSmall;
  }
}
