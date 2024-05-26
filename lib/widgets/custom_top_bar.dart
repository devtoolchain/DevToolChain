// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:devtoolchain/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:devtoolchain/constants/constants.dart';
import 'package:devtoolchain/utils/screen_size.dart';
import 'package:devtoolchain/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTopBar extends StatelessWidget {
  final int navIndex;

  const CustomTopBar({
    super.key,
    required this.navIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: context.height * 0.1,
      color: AppColors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 0,
              child: InkWell(
                onTap: () {},
                child: Container(
                    child: SvgPicture.asset(
                  "assets/images/logo.svg",
                  fit: BoxFit.fitHeight,
                  width: 200,
                )

                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       devtoolchainText.toUpperCase(),
                    //       style: TextStyle(
                    //           fontSize: 36,
                    //           fontFamily: FontFamily.nunito,
                    //           color: AppColors.title,
                    //           fontWeight: FontWeight.w600,
                    //           height: 0,
                    //           letterSpacing: 2.0),
                    //     ),
                    //     Text(
                    //       devtoolchainSloganText,
                    //       style: TextStyle(
                    //           height: 0,

                    //           fontFamily: FontFamily.nunito,
                    //           fontWeight: FontWeight.w600),
                    //     )
                    //   ],
                    // ),
                    ),
              )),
          hSpace(20),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TopNavButton(
                    title: homeText.toUpperCase(),
                    onTap: () {
                      RouteConfig.router.goNamed(RouteName.initial);
                    },
                    isSelected: navIndex == 1,
                  ),
                  hSpace(20),
                  TopNavButton(
                    title: servicesText.toUpperCase(),
                    onTap: () {
                      RouteConfig.router.goNamed(RouteName.service);
                    },
                    isSelected: navIndex == 2,
                  ),
                  hSpace(20),
                  TopNavButton(
                    title: aboutUsText.toUpperCase(),
                    onTap: () {
                      RouteConfig.router.goNamed(RouteName.about);
                    },
                    isSelected: navIndex == 3,
                  ),
                  hSpace(20),
                  TopNavButton(
                    title: contactUsText.toUpperCase(),
                    onTap: () {
                      RouteConfig.router.goNamed(RouteName.contact);
                    },
                    isSelected: navIndex == 4,
                  ),
                ],
              )),
          hSpace(20),
          const AppButton(
            btnName: getInTouchText,
          )
        ],
      ),
    );
  }
}
