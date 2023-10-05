class SizeFactory {
  final double large;
  final double mediumMin;
  final double mediumMax;
  final double small;
  final double xSmall;
  final double xLarge;

  const SizeFactory._({
    required this.large,
    required this.mediumMin,
    required this.mediumMax,
    required this.small,
    required this.xSmall,
    required this.xLarge,
  });

  factory SizeFactory.normal() => const SizeFactory._(
        large: 600,
        mediumMax: 600,
        mediumMin: 400,
        small: 400,
        xSmall: 800,
        xLarge: 1200,
      );

  factory SizeFactory.custom({
    required double large,
    required double mediumMax,
    required double mediumMin,
    required double small,
    required double xSmall,
    required double xLarge,
  }) =>
      SizeFactory._(
        large: large,
        mediumMax: mediumMax,
        mediumMin: mediumMin,
        small: small,
        xSmall: xSmall,
        xLarge: xLarge,
      );

  @override
  String toString() {
    return 'SizeFactory{large: $large, '
        'mediumMin: $mediumMin, mediumMax: '
        '$mediumMax, small: $small, '
        'xSmall: $xSmall, xLarge: '
        '$xLarge}';
  }
}
