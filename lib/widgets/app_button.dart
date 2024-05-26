// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:devtoolchain/constants/constants.dart';

class AppButton extends StatelessWidget {
  final String btnName;
  final Function()? onPressed;
  final Color? btnColor;
  final Color? btnTextColor;
  final double? btnHeight;
  final double? btnWidth;
  final double? btnRadius;

  const AppButton({
    super.key,
    required this.btnName,
    this.onPressed,
    this.btnColor,
    this.btnTextColor,
    this.btnHeight,
    this.btnWidth,
    this.btnRadius,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed?? () {},
      color:btnColor?? AppColors.primary,
      padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnRadius?? 10)),
      child: Text(
        btnName,
        style: TextStyle(
            fontSize: 18,
            color:btnColor?? AppColors.white,
            fontFamily: FontFamily.nunito,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
