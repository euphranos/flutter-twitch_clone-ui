import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/widgets/streamer_widget_vertical.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/categori_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "Discover",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            slider(context),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customCard("Music", MdiIcons.music),
                  customCard("Games", MdiIcons.gamepadSquareOutline),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customCard("Esports", MdiIcons.medalOutline),
                  customCard("IRL", MdiIcons.microphone),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: customText("LIVE CHANNELS WE THINK YOU'LL LIKE"),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allStreamers.length,
                  itemBuilder: ((context, index) {
                    return buildSteramerVertical(index, false, 200, 350);
                  })),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "CATEGORIES",
                      style: TextStyle(
                          color: Color(0xff9778C8),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  customText("WE THINK YOU'LL LIKE"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: getCategori(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: customText("RECOMMENDED SMALLER COMMUNUTIES"),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allStreamers.length,
                  itemBuilder: ((context, index) {
                    return buildSteramerVertical(index, false, 200, 350);
                  })),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: customText("ALL ABOARD THE HYPE TRAIN!"),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allStreamers.length,
                  itemBuilder: ((context, index) {
                    return buildSteramerVertical(index, false, 200, 350);
                  })),
            ),
          ],
        ),
      ),
    );
  }

  Widget customText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget customCard(String text, IconData icon) {
    return Container(
      height: 50,
      width: 210,
      decoration: BoxDecoration(
          color: Color(0xff782CE7), borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget getCategori() {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: allCategories.length,
        itemBuilder: (context, index) {
          return CategoryWidget(
            isSecondDesign: false,
            height: 150,
            width: 120,
            categoriImage: "${allCategories[index].categoriImage}",
            categoriName: "${allCategories[index].categoriName}",
            viewCount: allCategories[index].viewCount!.toInt(),
          );
        },
      ),
    );
  }

  Widget slider(context) {
    return CarouselSlider.builder(
        itemCount: allStreamers.length,
        itemBuilder: ((context, index, realIndex) {
          return buildSteramerVertical(
              index,
              true,
              ResponsiveWrapper.of(context).screenHeight * 0.1 + 100,
              ResponsiveWrapper.of(context).screenWidth * 0.9);
        }),
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          height: ResponsiveWrapper.of(context).screenHeight * 0.1 + 135,
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ));
  }

  Widget buildSteramerVertical(
      int index, bool onlyHeaders, double h, double w) {
    return StreamerWidgetVertical(
      filters: allStreamers[index].filters,
      height: h,
      width: w,
      streamerName: "${allStreamers[index].name}",
      avatar: "${allStreamers[index].avatar}",
      streamTitle: "${allStreamers[index].title}",
      streamCategory: "${allStreamers[index].category}",
      streamImage: "${allStreamers[index].streamImage}",
      onlyHeader: onlyHeaders,
    );
  }
}
