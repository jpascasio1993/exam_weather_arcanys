import 'package:flutter/cupertino.dart';
import 'package:weather_exam_arcanys/l10n/l10n.dart';

extension LocalizationExtension on BuildContext {
  AppLocalization get localization => AppLocalization.of(this);
}