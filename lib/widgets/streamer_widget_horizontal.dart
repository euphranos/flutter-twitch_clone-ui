// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/functions.dart';
import 'filter_widget.dart';

class StreamerWidgetHorizontal extends StatelessWidget {
  final List? filters;
  final String streamImage;
  final String streamerAvatar;
  final String streamTitle;
  final String streamerName;
  final String streamCategory;
  final int? streamViewersCount;
  const StreamerWidgetHorizontal({
    Key? key,
    required this.filters,
    required this.streamImage,
    required this.streamerAvatar,
    required this.streamTitle,
    required this.streamerName,
    required this.streamCategory,
    required this.streamViewersCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.green,
                height: 120,
                width: 180,
                child: Image.asset(
                  streamImage,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 120,
                width: 180,
                color: Colors.black.withOpacity(0.5),
              ),
              Positioned(
                  bottom: 5,
                  left: 5,
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 6, backgroundColor: Colors.redAccent),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        getViewCount(streamViewersCount!),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 180,
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(streamerAvatar),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        streamerName,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Text(
                    streamTitle,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 17,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Text(
                    streamCategory,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 17,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    children: List.generate(filters!.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: filterWidget(filters: filters, index: index),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
