import 'package:beep_operator/core/responsive/responsive.dart';
import 'package:beep_operator/core/utils/app_assets.dart';
import 'package:beep_operator/core/utils/app_button.dart';
import 'package:beep_operator/core/utils/app_theme.dart';
import 'package:beep_operator/core/utils/helper.dart';
import 'package:beep_operator/core/utils/widgets/animated_sized_box.dart';
import 'package:beep_operator/presentation/components/app_bar_button.dart';
import 'package:beep_operator/presentation/components/expansions_title.dart';
import 'package:beep_operator/presentation/components/work_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: !Responsive.isMobile(context) ? 65 : 55,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: AnimatedPadding(
          duration: Helper().defaultDuration,
          padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? Get.width * .01 : Get.width * .05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(AppAssets.logoIcon, height: 33),
                  SizedBox(width: defaultPadding / 1.5),
                  Image.asset(AppAssets.beepTextLogo, height: 25),
                  SizedBox(width: defaultPadding / 1.5),
                  // const TestText(),
                  // Text(
                  //   MediaQuery.of(context).size.width.toString(),
                  //   style: const TextStyle(color: Colors.black),
                  // )
                ],
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: !Responsive.isMobile(context)
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppBarButton(
                            title: "Welcome",
                            style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                            onPressed: () {},
                          ),
                          SizedBox(width: Get.width * .005),
                          AppBarButton(
                            title: "Operator",
                            icon: Icon(Icons.keyboard_arrow_down_outlined, color: Theme.of(context).iconTheme.color),
                            onPressed: () {},
                          ),
                          SizedBox(width: Get.width * .002),
                          AppBarButton(
                            title: "FAQ",
                            onPressed: () {},
                          ),
                          SizedBox(width: Get.width * .013),
                          AppBarButton(
                            title: "Launch My Car Wash",
                            borderColor: Theme.of(context).primaryColor,
                            padding: EdgeInsets.symmetric(vertical: defaultPadding * 1.2, horizontal: defaultPadding),
                            style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w700),
                            onPressed: () {},
                          ),
                        ],
                      )
                    : Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset(AppAssets.moreIcon, height: 20),
                      ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              SizedBox(
                height: Get.width / 4,
                width: Get.width,
                /* foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    tileMode: TileMode.repeated,
                    // stops: const [0.0, 10.0],
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor,
                    ],
                  ),
                ), */
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    //* Background Image
                    Image.asset(AppAssets.homeColorBg, fit: BoxFit.fitWidth),
                    Container(
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Theme.of(context).scaffoldBackgroundColor.withAlpha(1),
                            Theme.of(context).scaffoldBackgroundColor,
                          ],
                        ),
                      ),
                      child: Image.asset(
                        AppAssets.homeTransparentBg,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedPadding(
                duration: Helper().defaultDuration,
                padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? Get.width * .04 : Get.width * .06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* Intro
                    AnimatedSizedBox(isMobileH: !Responsive.isDesktop(context) ? Get.width * 0.070 : Get.width * 0.040),
                    if (Responsive.isDesktop(context))
                      Row(
                        children: [
                          Expanded(
                            child: Padding(padding: EdgeInsets.only(top: Get.width * 0.040), child: downloadText(context)),
                          ),
                          AnimatedSizedBox(isMobileW: Get.width * .060),
                          Expanded(child: coinWithPhone(context)),
                        ],
                      )
                    else ...[
                      coinWithPhone(context),
                      downloadText(context),
                      AnimatedSizedBox(isMobileH: Get.width * 0.070),
                    ],
                    AnimatedSizedBox(isMobileH: Responsive.isTablet(context) ? Get.width * 0.015 : Get.width * 0.060),

                    //* Beep Features
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Beep Features",
                        style: TextStyle(fontSize: Responsive.isMobile(context) ? 26 : 28, fontWeight: FontWeight.w800),
                      ),
                    ),
                    AnimatedSizedBox(isMobileH: Get.width * 0.025),
                    AnimatedPadding(
                      duration: Helper().defaultDuration,
                      padding: Responsive.isMobile(context)
                          ? EdgeInsets.zero
                          : Responsive.isTablet(context)
                              ? EdgeInsets.symmetric(horizontal: Get.width * .10)
                              : EdgeInsets.symmetric(horizontal: Get.width * .18),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: !Responsive.isDesktop(context) ? 15 : 17, fontWeight: FontWeight.bold, color: Colors.grey, height: 2),
                      ),
                    ),
                    AnimatedPadding(
                      duration: Helper().defaultDuration,
                      padding: EdgeInsets.symmetric(vertical: !Responsive.isDesktop(context) ? Get.width * 0.10 : Get.width * 0.050),
                      child: Align(alignment: Alignment.center, child: Image.asset(AppAssets.beepFeaturesImage)),
                    ),

                    // * How Beep Works
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "How Beep Works",
                        style: TextStyle(fontSize: Responsive.isMobile(context) ? 26 : 28, fontWeight: FontWeight.w800),
                      ),
                    ),
                    AnimatedSizedBox(isMobileH: Get.width * 0.050),
                    AnimatedPadding(
                      duration: Helper().defaultDuration,
                      padding: Responsive.isMobile(context)
                          ? EdgeInsets.zero
                          : Responsive.isTablet(context)
                              ? EdgeInsets.symmetric(horizontal: Get.width * .10)
                              : EdgeInsets.symmetric(horizontal: Get.width * .18),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: !Responsive.isDesktop(context) ? 15 : 17, fontWeight: FontWeight.bold, color: Colors.grey, height: 2),
                      ),
                    ),

                    if (Responsive.isDesktop(context))
                      Column(
                        children: [
                          SizedBox(height: defaultPadding * 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: List.generate(
                                    int.parse("${6 / 2}".toString()),
                                    (index) => WorkGridTile(
                                      isAxis: false,
                                      gridCount: index + 1,
                                      subTitle: "",
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Get.width * .040),
                                child: howBeepWorksImage(context),
                              ),
                              Expanded(
                                child: Column(
                                  children: List.generate(
                                    int.parse("${6 / 2}".toString()),
                                    (index) => WorkGridTile(
                                      isAxis: true,
                                      gridCount: index + 1,
                                      subTitle: "",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: defaultPadding * 4),
                        ],
                      )
                    else ...[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: Get.width * 0.1),
                        child: howBeepWorksImage(context),
                      ),

                      //* Step Grid View
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
                        mainAxisSpacing: Get.width * .04,
                        crossAxisSpacing: Get.width * .04,
                        children: List.generate(
                          6,
                          (index) => WorkGridTile(
                            gridCount: index + 1,
                            subTitle: "",
                          ),
                        ),
                      ),
                    ],
                    AnimatedSizedBox(isMobileH: Responsive.isDesktop(context) ? Get.width * .030 : Get.width * 0.010),
                    //* FAQ
                    if (Responsive.isDesktop(context))
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: faqImageModule(context)),
                          Expanded(child: fagModule(context)),
                        ],
                      )
                    else ...[
                      Padding(padding: EdgeInsets.symmetric(horizontal: Get.width * 0.080), child: faqImageModule(context)),
                      fagModule(context),
                    ],

                    ///* Download App
                    AnimatedContainer(
                      duration: Helper().defaultDuration,
                      width: Get.width,
                      margin: EdgeInsets.symmetric(vertical: Get.width * 0.115, horizontal: !Responsive.isDesktop(context) ? Get.width * 0.010 : Get.width * .090),
                      padding: EdgeInsets.only(bottom: Responsive.isDesktop(context) ? Get.width * 0.030 : Get.width * 0.060),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(defaultRadius * 2.2),
                        gradient: LinearGradient(
                          begin: FractionalOffset.topLeft,
                          end: FractionalOffset.bottomRight,
                          tileMode: TileMode.clamp,
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColor,
                            const Color(0xff025839),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedSizedBox(isMobileH: Get.width * 0.030),
                          AnimatedDefaultTextStyle(
                            duration: Helper().defaultDuration,
                            style: TextStyle(
                                fontSize: Responsive.isMobile(context)
                                    ? 23
                                    : Responsive.isTablet(context)
                                        ? 30
                                        : 33,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontFamily: fontFamily),
                            child: const Text(
                              "Download Beep Control App",
                            ),
                          ),
                          AnimatedSizedBox(isMobileH: Get.width * 0.043),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppAssets.getGooglePlay,
                                height: !Responsive.isDesktop(context) ? Get.width * 0.1 : 100,
                              ),
                              SizedBox(width: !Responsive.isDesktop(context) ? defaultPadding : defaultPadding * 2),
                              Image.asset(
                                AppAssets.getAppleStore,
                                height: !Responsive.isDesktop(context) ? Get.width * 0.1 : 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //* Details
                    IntrinsicHeight(
                      child: OverflowBox(
                        maxWidth: Get.width,
                        child: Container(
                          // transform: Matrix4.translationValues(-20.0, 0, 0),
                          color: const Color(0xff09231A),
                          padding: EdgeInsets.symmetric(vertical: defaultPadding * 1.8, horizontal: Get.width * 0.1),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (Responsive.isMobile(context))
                                  Column(
                                    children: [
                                      brandingAddress(context),
                                      AnimatedSizedBox(isMobileH: Get.width * 0.027),
                                      companyDetails(context),
                                      AnimatedSizedBox(isMobileH: Get.width * 0.027),
                                      followUS(context),
                                    ],
                                  ),
                                if (Responsive.isTablet(context))
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            brandingAddress(context),
                                            AnimatedSizedBox(isMobileH: Get.width * 0.027),
                                            followUS(context),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: companyDetails(context)),
                                    ],
                                  ),
                                if (Responsive.isDesktop(context))
                                  Row(
                                    children: [
                                      Expanded(child: brandingAddress(context)),
                                      Expanded(child: Center(child: companyDetails(context))),
                                      Expanded(child: followUS(context)),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //* Intro
  Column downloadText(BuildContext context) {
    return Column(
      children: [
        AnimatedSizedBox(isMobileH: Get.width * 0.050),
        Align(
          alignment: Alignment.centerLeft,
          child: AnimatedDefaultTextStyle(
            duration: Helper().defaultDuration,
            style: TextStyle(fontSize: Responsive.isMobile(context) ? 24 : Get.width * .027, fontWeight: FontWeight.w800, fontFamily: fontFamily),
            child: const Text(
              "Download App,\nStart your business,\nEarn money!",
            ),
          ),
        ),
        AnimatedSizedBox(isMobileH: !Responsive.isDesktop(context) ? Get.width * 0.050 : Get.width * 0.035),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
          style: TextStyle(
            fontSize: Responsive.isMobile(context)
                ? 14
                : Responsive.isTablet(context)
                    ? 15
                    : 17,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            height: 2,
          ),
        ),
        AnimatedSizedBox(isMobileH: !Responsive.isDesktop(context) ? Get.width * 0.050 : Get.width * 0.025),
        Row(
          children: [
            AppButton(
              title: "Register as Operator",
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
            ),
          ],
        ),
      ],
    );
  }

  AnimatedContainer coinWithPhone(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: Helper().defaultDuration,
      height: Responsive.isMobile(context)
          ? Get.width * 0.6
          : Responsive.isTablet(context)
              ? 400
              : Get.width * 0.350,
      child: SvgPicture.asset(
        AppAssets.coinWithPhone,
        width: Get.width,
      ),
    );
  }

  // * How Beep Works
  Center howBeepWorksImage(BuildContext context) {
    return Center(
      child: Image.asset(
        AppAssets.howBeepWorksImage,
        width: Responsive.isMobile(context)
            ? Get.width * .450
            : Responsive.isTablet(context)
                ? Get.width * .4
                : Get.width * .4,
        height: Responsive.isMobile(context)
            ? Get.width * .450
            : Responsive.isTablet(context)
                ? Get.width * .4
                : Get.width * .4,
      ),
    );
  }

  //* FAQ
  Column fagModule(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "FAQ",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        Container(
          height: 5,
          width: 55,
          margin: EdgeInsets.only(top: defaultPadding / 1.8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        AnimatedSizedBox(isMobileH: Get.width * 0.040),
        ListView.separated(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => ExpansionsTitle(isExpanded: index == 0 ? true.obs : false.obs),
          separatorBuilder: (BuildContext context, int index) => Divider(height: defaultPadding),
        ),
      ],
    );
  }

  //* Details
  Column brandingAddress(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logAndAddress(context),
      ],
    );
  }

  Column logAndAddress(BuildContext context) {
    return Column(
      crossAxisAlignment: Responsive.isDesktop(context) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Image.asset(AppAssets.beepTextLogo, height: 35, color: Colors.white),
        AnimatedSizedBox(isMobileH: Responsive.isMobile(context) ? Get.width * .050 : Get.width * 0.010),
        //* Address
        Text(
          "525 W Van Buren St STE 1100, Chicago, IL 60607, United States",
          textAlign: Responsive.isDesktop(context) ? TextAlign.start : TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white70),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: Get.width * 0.010),
          child: Text(
            "+1 988-344-7593",
            textAlign: Responsive.isDesktop(context) ? TextAlign.start : TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white70),
          ),
        ),
        Text(
          "beep@email.com",
          textAlign: Responsive.isDesktop(context) ? TextAlign.start : TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white70),
        ),
      ],
    );
  }

  Container faqImageModule(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: SvgPicture.asset(
        AppAssets.faqImage,
        width: Get.width,
        height: Responsive.isDesktop(context) ? Get.width * .3 : null,
      ),
    );
  }

  Column companyDetails(context) {
    return Column(
      crossAxisAlignment: Responsive.isDesktop(context) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: Responsive.isMobile(context) ? Get.width * .020 : Get.width * 0.010),
          child: Text(
            "COMPANY".toUpperCase(),
            textAlign: Responsive.isDesktop(context) ? TextAlign.start : TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        detailText("Operator", context),
        detailText("Start My Business", context),
        detailText("How Beep Works", context),
        detailText("Partner With Us", context),
        detailText("Contact Us", context),
      ],
    );
  }

  Column followUS(BuildContext context) {
    return Column(
      children: [
        AnimatedPadding(
          duration: Helper().defaultDuration,
          padding: EdgeInsets.symmetric(vertical: Responsive.isMobile(context) ? Get.width * .030 : Get.width * 0.010),
          child: Text(
            "FOLLOW US".toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.instagramIcon),
            SizedBox(width: defaultPadding * 1.5),
            SvgPicture.asset(AppAssets.youtubeIcon),
          ],
        ),
      ],
    );
  }

  Padding detailText(String text, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: !Responsive.isDesktop(context) ? Get.width * 0.015 : Get.width * .005),
      child: Text(
        text,
        textAlign: Responsive.isDesktop(context) ? TextAlign.start : TextAlign.center,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
      ),
    );
  }
}
