import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle heading = GoogleFonts.poppins(
  height: 2,
  fontSize: 30,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

TextStyle caption = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.grey,
);

TextStyle headingMeduim = GoogleFonts.poppins(
    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);

TextStyle captionMedium = GoogleFonts.poppins(
    fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black);

TextStyle headingRegular = GoogleFonts.poppins(
    fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black);

TextStyle superScript = GoogleFonts.poppins(
    fontWeight: FontWeight.w800,
    color: Colors.white,
    fontSize: 25,
    fontFeatures: [const FontFeature.enable('sups')]);
