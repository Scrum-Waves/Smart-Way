import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(BuildContext context) {
    return context.height;
  }

  static getScreenWidth(BuildContext context) {
    return context.width;
  }

  static getHeight(double pixels, BuildContext context) {
    double y = getScreenHeight(context) / pixels;
    return getScreenHeight(context) / y;
  }

  static getWidth(double pixels, BuildContext context) {
    double x = getScreenWidth(context) / pixels;
    return getScreenWidth(context) / x;
  }
}
