import 'package:devtoolchain/utils/utils.dart';
import 'package:devtoolchain/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/constants.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  final List<String> _iconList = [
    AppIcons.androidIconSvg,
    AppIcons.htmlSvg,
    AppIcons.macosSvg,
    AppIcons.googlePlayIconSvg,
    AppIcons.awsSvg,
    AppIcons.gitlabSvg,
    AppIcons.azureIconSvg,
    AppIcons.gitSvg,
    AppIcons.javascriptSvg,
    AppIcons.kotlinSvg,
    AppIcons.youtubeIconSvg,
    AppIcons.githubIconSvg,
    AppIcons.pythonSvg,
    AppIcons.flutterSvg,
    AppIcons.dartSvg,
    AppIcons.djangoIconSvg,
    AppIcons.bloggerSvg,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bg,
      appBar: customAppBar(context, giveMeIndex: 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHero(context),
            _buildCardSection(context),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                welcomeMsgText_1,
                style: TextStyle(
                    fontFamily: FontFamily.nunito,
                    color: AppColors.subtitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            // SvgPicture.asset(
            //   AppImages.waveSvg,
            //   fit: BoxFit.fill,
            // ),
            // _buildFooter(context),
            // const Divider(
            //   height: 0,
            // ),
            // _buildCopyright(context)
            const Footer()
            // _buildHero(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.bgImage),
              filterQuality: FilterQuality.high)),
      height: context.height,
      width: context.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  welcomeText,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: AppColors.title,
                      fontFamily: FontFamily.nunito),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  devtoolchainSloganText,
                  style: TextStyle(
                      fontSize: 28,
                      color: AppColors.title,
                      fontWeight: FontWeight.w900,
                      fontFamily: FontFamily.nunito),
                  textAlign: TextAlign.center,
                ),
                vSpace(10),
                const Text(
                  welcomeMsgText_2,
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.subtitle,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.nunito),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
          Expanded(
              child: SvgPicture.asset(
            AppImages.svg_1,
            height: context.height * 0.9,
          )),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context,
      {required String title, required String subtitle}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          color: AppColors.card,
          boxShadow: [
            BoxShadow(
                color: AppColors.subtitle.withOpacity(0.6),
                blurRadius: 20,
                spreadRadius: 2),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
                fontSize: 20,
                fontFamily: FontFamily.nunito,
                fontWeight: FontWeight.w600),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: FontFamily.nunito,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.subtitle),
          )
        ],
      ),
    );
  }

  Widget _buildCardSection(BuildContext context) {
    return Stack(
      children: [
        Transform.flip(
          flipY: true,
          child: Container(
            height: context.height,
            width: context.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.bgImage),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high)),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: context.height,
          width: context.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _buildCard(context,
                    title: frontendText, subtitle: frontendDescText),
                hSpace(40),
                _buildCard(context,
                    title: backendText, subtitle: backendDescText),
                hSpace(40),
                _buildCard(context,
                    title: cloudOpsText, subtitle: cloudOpsDescText)
              ]),
              const Text(
                "OUR EXPERTISE",
                style: TextStyle(
                    fontSize: 28,
                    color: AppColors.title,
                    fontFamily: FontFamily.nunito,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                  height: context.height * 0.2,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => hSpace(70),
                    scrollDirection: Axis.horizontal,
                    itemCount: _iconList.length,
                    itemBuilder: (context, index) => SvgPicture.asset(
                      _iconList[index],
                      height: context.height * 0.12,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  // Widget socialIcon(BuildContext context,
  //     {required IconData icon, Color? hoverColor}) {
  //   return IconButton.outlined(
  //     style: const ButtonStyle(
  //       side: WidgetStatePropertyAll(
  //         BorderSide(color: Colors.white),
  //       ),
  //     ),
  //     onPressed: () {},
  //     icon: Icon(
  //       icon,
  //       fill: 0.1,
  //       size: 35,
  //     ),
  //     color: Colors.white,
  //     padding: const EdgeInsets.all(12),
  //     hoverColor: hoverColor,
  //   );
  // }

  // _buildSocialIcons(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       socialIcon(context,
  //           icon: Ionicons.logo_facebook, hoverColor: const Color(0xff0766ff)),
  //       hSpace(15),
  //       socialIcon(context,
  //           icon: Ionicons.logo_instagram, hoverColor: const Color(0xffff007e)),
  //       hSpace(15),
  //       socialIcon(context,
  //           icon: Ionicons.logo_youtube, hoverColor: const Color(0xffff0000)),
  //       hSpace(15),
  //       socialIcon(context,
  //           icon: Ionicons.logo_linkedin, hoverColor: const Color(0xff0b66c2)),
  //       hSpace(15),
  //       socialIcon(context,
  //           icon: Ionicons.logo_twitter, hoverColor: const Color(0xff0766ff)),
  //     ],
  //   );
  // }

  // Widget _buildFooter(BuildContext context) {
  //   return Container(
  //     margin: EdgeInsets.zero,
  //     height: context.height * 0.6,
  //     width: context.width,
  //     decoration: BoxDecoration(
  //         color: AppColors.primary,
  //         border: Border.all(
  //           width: 0,
  //           color: AppColors.primary,
  //         )),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         const Text(
  //           devtoolchainText,
  //           style: TextStyle(
  //               color: AppColors.white,
  //               fontSize: 40,
  //               fontFamily: FontFamily.nunito,
  //               fontWeight: FontWeight.w800),
  //         ),
  //         const Text(
  //           devtoolchainSloganText,
  //           style: TextStyle(
  //               color: AppColors.white,
  //               fontSize: 30,
  //               fontFamily: FontFamily.nunito,
  //               fontWeight: FontWeight.w600),
  //         ),
  //         vSpace(15),
  //         _buildSocialIcons(context),
  //         vSpace(15),
  //         const Padding(
  //           padding: EdgeInsets.symmetric(horizontal: 30),
  //           child: Text(
  //             devtoolchainDescText,
  //             style: TextStyle(
  //                 color: AppColors.card,
  //                 fontSize: 22,
  //                 fontFamily: FontFamily.nunito,
  //                 fontWeight: FontWeight.w600),
  //             textAlign: TextAlign.center,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildCopyright(BuildContext context) {
  //   return Container(
  //     alignment: Alignment.center,
  //     height: context.height * 0.1,
  //     color: AppColors.primary,
  //     child: Text.rich(TextSpan(
  //         text: copyrigntText,
  //         style: const TextStyle(
  //           fontSize: 18,
  //           color: AppColors.white,
  //           fontWeight: FontWeight.w500,
  //           fontFamily: FontFamily.nunito,
  //         ),
  //         children: [
  //           TextSpan(
  //               text: "Narayan Vishwkarma",
  //               style: const TextStyle(fontWeight: FontWeight.w600),
  //               recognizer: TapGestureRecognizer()
  //                 ..onTap = () {
  //                   log("message");
  //                   launchUrlString("https://instagram.com/me_narayan_vi");
  //                 }),
  //         ])),
  //   );
  // }
}
