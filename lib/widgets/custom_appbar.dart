import 'package:devtoolchain/utils/utils.dart';
import 'package:devtoolchain/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(BuildContext context,
    {required int giveMeIndex}) {
  return PreferredSize(
      preferredSize: Size(context.width, context.height * 0.1),
      child: CustomTopBar(
        navIndex: giveMeIndex,
      ));
}
