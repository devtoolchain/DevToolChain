import 'package:flutter/widgets.dart';

extension ScreenSizeValues on BuildContext{
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  
}