import 'package:flutter/material.dart';

Flexible buildHeroLogo({double h}) {
  return Flexible(
    child: Hero(
      tag: 'logo',
      child: Container(
        child: Image.asset('assets/images/logo.png'),
        height: h,
      ),
    ),
  );
}
