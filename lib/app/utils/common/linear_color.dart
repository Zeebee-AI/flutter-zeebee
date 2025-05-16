import 'package:zeebee/app/utils/common/color.dart';
import 'package:flutter/material.dart';

class AppLinearColor {
  static LinearGradient mainGradientButtom({
    Alignment? start,
    Alignment? end,
  }) {
    return LinearGradient(
      colors: [
        AppColor.colorBlue05,
        AppColor.colorBlue06,
      ],
      begin: start ?? Alignment.topLeft,
      end: end ?? Alignment.bottomRight,
    );
  }

  static LinearGradient mainGradientButtomV2({
    Alignment? start,
    Alignment? end,
  }) {
    return LinearGradient(
      colors: [
        AppColor.colorBlue06,
        AppColor.colorBlue06,
      ],
      begin: start ?? Alignment.topLeft,
      end: end ?? Alignment.bottomRight,
    );
  }

  static LinearGradient yellowGradientButton({
    Alignment? start,
    Alignment? end,
  }) {
    return LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        AppColor.colorYellow1,
        AppColor.colorYellow2,
      ],
      transform: const GradientRotation(131 * 3.141592653589793 / 180),
    );
  }
}
