import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: AppColors.primaryYellow,
          child: const Center(
            child: Text("MOBILE VIEW"),
          ),
        ));
  }
}
