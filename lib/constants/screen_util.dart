import 'package:flutter/widgets.dart';

class ScreenUtil {
  static double getHeight(BuildContext context, double height) {
    double screenHeight = MediaQuery.of(context).size.height;
    double coefficient = height / screenHeight;
    return screenHeight * coefficient;
  }

  static double getWidth(BuildContext context, double width) {
    double screenWidth = MediaQuery.of(context).size.width;
    double coefficient = width / screenWidth;
    return screenWidth * coefficient;
  }
}
