// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'filter_widget.dart';

class StreamerWidgetVertical extends StatelessWidget {
  final String streamerName;
  final String avatar;
  final String streamTitle;
  final String streamCategory;
  final bool onlyHeader;
  final String streamImage;
  final double width;
  final double height;
  final List? filters;

  const StreamerWidgetVertical({
    Key? key,
    required this.streamerName,
    required this.avatar,
    required this.streamTitle,
    required this.streamCategory,
    required this.onlyHeader,
    required this.streamImage,
    required this.width,
    required this.height,
    required this.filters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          !onlyHeader
              ? SizedBox(
                  width: width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundImage: AssetImage(avatar),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  streamerName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22),
                                ),
                                const SizedBox(height: 2),
                                SizedBox(
                                  width: 240,
                                  child: Text(
                                    streamTitle,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 19),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  streamCategory,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: width / 1.5,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(filters!.length,
                                          (index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          child: filterWidget(
                                              filters: filters, index: index),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget header() {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          child: Image.asset(
            streamImage,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            top: 5,
            left: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: Color(0xffEB1412),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                "LIVE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            )),
        Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "1.5K Viewers",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
            )),
      ],
    );
  }
}
