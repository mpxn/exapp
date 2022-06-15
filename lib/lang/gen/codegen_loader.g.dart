// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes
// ignore_for_file: avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "name": "App",
  "last_name": "App",
  "profile": "Profile",
  "launches": "Launches",
  "error:": "Error",
  "Pin_is_incorrect": "Pin is incorrect",
  "title_enter_pin": "Enter pin",
  "title_error_pin": "Wrong pin, try again",
  "title_create_pin": "Create new pin",
  "title_confirm_pin": "Confirm new pin",
  "pin_profile": "Pin code",
  "pin_profile_en": "Enable",
  "pin_profile_dis": "Disable",
  "launches_press_one_more": "Press one more to reset",
  "launches_at_least": "Enter at least 3 characters",
  "launches_label": "Enter mission name",
  "launches_mission": "Mission",
  "launches_find_launches": "Tap search to find launches",
  "launches_no_launches": "no launches",
  "launches_no_details": "no details"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
