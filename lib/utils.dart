import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

List<Color> colors = [
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
  Colors.pink,
  Colors.orange,
  Colors.yellow,
  Colors.greenAccent,
  Colors.green,
];

const fullAngleInRadians = math.pi * 2;

double normalizeAngle(double angle) => normalize(angle, fullAngleInRadians);

Offset toPolar(Offset center, double radians, double radius) =>
    center + Offset.fromDirection(radians, radius);

double normalize(double value, double max) => (value % max + max) % max;

double toAngle(Offset position, Offset center) => (position - center).direction;

double toRadian(double value) => (value * math.pi) / 180;

InfoProperties info03 = InfoProperties(
    bottomLabelStyle: TextStyle(
        color: Color(0xff002D43), fontSize: 12.sp, fontWeight: FontWeight.w700),
    bottomLabelText: '+1.04% monthly',
    mainLabelStyle: TextStyle(
        color: Colors.black, fontSize: 30.sp, fontWeight: FontWeight.w700),
    modifier: (double value) {
      final kcal = value.toInt();
      var format = NumberFormat.currency(symbol: '₹ ', decimalDigits: 0);
      var ruppe = (format.format(kcal));
      return '$ruppe';
    });
