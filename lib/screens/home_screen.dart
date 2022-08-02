import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/widgets/categori_widget.dart';
import 'package:flutter_application_1/widgets/streamer_widget_horizontal.dart';
// ignore_for_file: prefer_const_constructors

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              sliver: SliverToBoxAdapter(
                child: customText("Following", 35),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              sliver: SliverToBoxAdapter(
                child: customText("Followed Categories", 25),
              ),
            ),
            getCategoriSection(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              sliver: SliverToBoxAdapter(
                child: customText("Your Live Channels", 25),
              ),
            ),
            streamersList(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              sliver: SliverToBoxAdapter(
                child: customText("Channels Recommended For You", 25),
              ),
            ),
            streamersList(),
          ],
        ),
      ),
    );
  }

  SliverList streamersList() {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: allStreamers.length,
      (context, index) {
        return StreamerWidgetHorizontal(
          streamViewersCount: allStreamers[index].streamViewersCount,
          streamerName: "${allStreamers[index].name}",
          streamTitle: "${allStreamers[index].title}",
          streamerAvatar: "${allStreamers[index].avatar}",
          streamImage: "${allStreamers[index].streamImage}",
          streamCategory: "${allStreamers[index].category}",
          filters: allStreamers[index].filters,
        );
      },
    ));
  }

  Widget getCategoriSection() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: allCategories.length,
            itemBuilder: (context, index) {
              return CategoryWidget(
                isSecondDesign: true,
                height: 150,
                width: 120,
                categoriImage: "${allCategories[index].categoriImage}",
                categoriName: "${allCategories[index].categoriName}",
                viewCount: allCategories[index].viewCount!.toInt(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget customText(String text, double fontSize) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize,
          color: Colors.white.withOpacity(0.8),
          fontWeight: FontWeight.w700),
    );
  }
}
