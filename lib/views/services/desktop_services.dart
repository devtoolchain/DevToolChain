import 'package:devtoolchain/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class DesktopServices extends StatelessWidget {
  const DesktopServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bg,
      appBar: customAppBar(context, giveMeIndex: 2),

      // SingleChildScrollView(
      //   child: Column(
      //     children: [_buildHero(context)],
      //   ),
      // ),
    );
  }
}
