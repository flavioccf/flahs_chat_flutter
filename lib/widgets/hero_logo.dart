import 'dart:ffi';

import 'package:flutter/material.dart';

Hero buildHeroLogo({double h}) {
  return Hero(
    tag: 'logo',
    child: Container(
      child: Image.asset('assets/images/logo.png'),
      height: h,
    ),
  );
}
