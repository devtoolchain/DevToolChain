// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:devtoolchain/constants/constants.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ResponsivePage({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1020) {
          return desktop ??
              Container(
                color: AppColors.primaryYellow,
                child: const Center(
                  child: Text("DESKTOP VIEW"),
                ),
              );
        } else if (constraints.maxWidth > 600) {
          return tablet ??
              Container(
                color: AppColors.primaryRed,
                child: const Center(
                  child: Text("TABLET VIEW"),
                ),
              );
        } else {
          return mobile ??
              Container(
                color: AppColors.amber,
                child: const Center(
                  child: Text("MOBILE VIEW"),
                ),
              );
        }
      },
    );
  }
}
