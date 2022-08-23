// ignore_for_file: non_constant_identifier_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'colors.dart';

const kFontFamily = 'Poppins';

///
/// spacing values
const double kDefaultPadding = 16;

// blur
final kDefaultBlur = BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
  child: Container(),
);

// boxshadow
final kDefaultBoxShadow = [
  BoxShadow(
    color: kColorPrimary.withOpacity(0.7),
    offset: const Offset(0, 7),
    blurRadius: 20,
  ),
];

//hint text style
const TextStyle kHintTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: kColorWhite50,
);

//hint text style
const TextStyle kLabelTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: kColorWhite,
);
