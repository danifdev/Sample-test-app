import 'package:flutter/material.dart';

@immutable
final class AppCommonStyles {
  const AppCommonStyles._();

  static EdgeInsets paddingHorNormal =
      const EdgeInsets.symmetric(horizontal: 16);
  static EdgeInsets paddingLeftNormal = const EdgeInsets.fromLTRB(24, 0, 0, 0);
  static EdgeInsets paddingRightNormal = const EdgeInsets.fromLTRB(0, 0, 24, 0);
  static EdgeInsets paddingNormal =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 16);
  static EdgeInsets paddingVerNormal = const EdgeInsets.symmetric(vertical: 16);
  static EdgeInsets paddingVerMedium = const EdgeInsets.symmetric(vertical: 24);
}
