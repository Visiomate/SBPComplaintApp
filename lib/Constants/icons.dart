import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/utils/flutter_icons.dart';
import 'colors.dart';
import 'dimensions.dart';

//SVGIcons are in their respective UI screens
class IconConstants {
  static const PERSON_ICON = Icon(
    Icons.person,
    size: Constants.ICON_SIZE_60,
    color: ColorsConstant.WHITE_COLOR,
  );
  static const PERSON_ICON_PRIMARY_COLOR = Icon(
    Icons.person,
    size: Constants.ICON_SIZE_50,
    color: ColorsConstant.PRIMARY_COLOR,
  );
  static const PERSON_ICON_30 = Icon(
    Icons.person,
    size: Constants.ICON_SIZE,
    color: ColorsConstant.WHITE_COLOR,
  );
  static const PERSON_ICON_30_PRIMARY_COLOR = Icon(
    Icons.person,
    size: Constants.ICON_SIZE_50,
    color: ColorsConstant.PRIMARY_COLOR,
  );
  static const CONNECTION_ICON = Icon(
    Icons.local_gas_station,
    size: Constants.ICON_SIZE,
    color: ColorsConstant.WHITE_COLOR,
  );
  static const LOGOUT_ICON = Icon(
    Icons.exit_to_app,
    size: Constants.ICON_SIZE,
    color: ColorsConstant.WHITE_COLOR,
  );
  static const LOGOUT_ICON_PRIMARY_COLOR = Icon(
    Icons.exit_to_app,
    size: Constants.ICON_SIZE_50,
    color: ColorsConstant.PRIMARY_COLOR,
  );
  static const SETTINGS_ICON_PRIMARY_COLOR = Icon(
    Icons.settings,
    size: Constants.ICON_SIZE_50,
    color: ColorsConstant.PRIMARY_COLOR,
  );

  static const ADD_ICON = Icon(
    Icons.add,
    color: ColorsConstant.SECONDARY_COLOR,
    size: Constants.ICON_SIZE,
  );
  static const CLOSE_ICON = Icon(
    Icons.clear,
    color: ColorsConstant.WHITE_COLOR,
    size: Constants.ICON_SIZE,
  );
  static const ADD_ICON_WHITE_COLOR = Icon(
    Icons.add,
    color: ColorsConstant.WHITE_COLOR,
    size: Constants.ICON_SIZE,
  );
  static const EDIT_ICON = Icon(
    FlutterAppIcons.edit,
    color: ColorsConstant.PRIMARY_COLOR,
    size: Constants.ICON_SIZE,
  );
  static const UPLOAD_ICON_HINT_COLOR = Icon(
    FlutterAppIcons.upload,
    color: ColorsConstant.HINT_COLOR,
    size: Constants.ICON_SIZE_20,
  );
  static const UPLOAD_ICON_GREEN_COLOR = Icon(
    FlutterAppIcons.upload,
    color: ColorsConstant.SUCCESS_COLOR,
    size: Constants.ICON_SIZE_20,
  );
  static const DOWNLOAD_ICON = Icon(
    FlutterAppIcons.download,
    color: ColorsConstant.SECONDARY_COLOR,
    size: Constants.ICON_SIZE_20,
  );
  static const DONE_ICON = Icon(
    Icons.done,
    color: ColorsConstant.PRIMARY_COLOR,
    size: Constants.ICON_SIZE,
  );

  static const CARD_ICON = Icon(
    FlutterAppIcons.address_card,
    color: ColorsConstant.ICON_AND_TITLE_BG_COLOR,
    size: Constants.ICON_SIZE_20,
  );
  static const ASTERIK_ICON = Icon(
    FlutterAppIcons.asterisk,
    color: ColorsConstant.RED_COLOR,
    size: Constants.ICON_SIZE_10,
  );
  static const DOWN_ARROW_ICON = Icon(
    Icons.arrow_drop_down,
    color: ColorsConstant.HINT_COLOR,
    size: Constants.ICON_SIZE,
  );
  static const RIGHT_ARROW = Icon(
    Icons.keyboard_arrow_right,
    size: Constants.ICON_SIZE,
    color: ColorsConstant.HINT_COLOR,
  );

}