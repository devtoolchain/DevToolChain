import 'dart:developer';

import 'package:devtoolchain/constants/constants.dart';
import 'package:devtoolchain/utils/utils.dart';
import 'package:devtoolchain/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          AppImages.waveSvg,
          fit: BoxFit.fill,
        ),
        _buildFooter(context),
        const Divider(
          height: 0,
        ),
        _buildCopyright(context)
      ],
    );
  }

  Widget socialIcon(BuildContext context,
      {required IconData icon, Color? hoverColor}) {
    return IconButton.outlined(
      style: const ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(color: Colors.white),
        ),
      ),
      onPressed: () {},
      icon: Icon(
        icon,
        fill: 0.1,
        size: 35,
      ),
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      hoverColor: hoverColor,
    );
  }

  _buildSocialIcons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        socialIcon(context,
            icon: Ionicons.logo_facebook, hoverColor: const Color(0xff0766ff)),
        hSpace(15),
        socialIcon(context,
            icon: Ionicons.logo_instagram, hoverColor: const Color(0xffff007e)),
        hSpace(15),
        socialIcon(context,
            icon: Ionicons.logo_youtube, hoverColor: const Color(0xffff0000)),
        hSpace(15),
        socialIcon(context,
            icon: Ionicons.logo_linkedin, hoverColor: const Color(0xff0b66c2)),
        hSpace(15),
        socialIcon(context,
            icon: Ionicons.logo_twitter, hoverColor: const Color(0xff0766ff)),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      height: context.height * 0.6,
      width: context.width,
      decoration: BoxDecoration(
          color: AppColors.primary,
          border: Border.all(
            width: 0,
            color: AppColors.primary,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            devtoolchainText,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 40,
                fontFamily: FontFamily.nunito,
                fontWeight: FontWeight.w800),
          ),
          const Text(
            devtoolchainSloganText,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 30,
                fontFamily: FontFamily.nunito,
                fontWeight: FontWeight.w600),
          ),
          vSpace(15),
          _buildSocialIcons(context),
          vSpace(15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              devtoolchainDescText,
              style: TextStyle(
                  color: AppColors.card,
                  fontSize: 22,
                  fontFamily: FontFamily.nunito,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCopyright(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.height * 0.1,
      color: AppColors.primary,
      child: Text.rich(TextSpan(
          text: copyrigntText,
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.nunito,
          ),
          children: [
            TextSpan(
                text: "Narayan Vishwkarma",
                style: const TextStyle(fontWeight: FontWeight.w600),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    log("message");
                    launchUrlString("https://instagram.com/me_narayan_vi");
                  }),
          ])),
    );
  }
}
