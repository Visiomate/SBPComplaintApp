import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';

String getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context).getTranslatedValue(key);
}
