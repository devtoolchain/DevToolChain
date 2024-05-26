// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:devtoolchain/constants/constants.dart';

class TopNavButton extends StatelessWidget {
  final bool isSelected;
  final String title;
  final VoidCallback? onTap;
  const TopNavButton({
    super.key,
    this.isSelected = false,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap ?? () {},

      //color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: isSelected
            ? const BorderSide(color: AppColors.primary, width: 2)
            : BorderSide.none,
      ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 15,
            color: isSelected ? AppColors.primary : AppColors.title,
            fontFamily: FontFamily.nunito,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
