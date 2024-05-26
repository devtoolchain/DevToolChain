import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: AppColors.primaryRed,
          child: const Center(
            child: Text("TABLET VIEW"),
          ),
        ));
  }
}
