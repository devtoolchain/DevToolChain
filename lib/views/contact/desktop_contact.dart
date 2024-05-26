import 'package:devtoolchain/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bg,
      appBar: customAppBar(context, giveMeIndex: 4),

      // SingleChildScrollView(
      //   child: Column(
      //     children: [_buildHero(context)],
      //   ),
      // ),
    );
  }
}
