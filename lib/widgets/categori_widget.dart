// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/functions.dart';

class CategoryWidget extends StatelessWidget {
  final bool isSecondDesign;
  final double height;
  final double width;
  final String categoriImage;
  final String categoriName;
  final int viewCount;
  const CategoryWidget({
    Key? key,
    required this.isSecondDesign,
    required this.height,
    required this.width,
    required this.categoriImage,
    required this.categoriName,
    required this.viewCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height,
            width: width,
            child: Image.asset(
              categoriImage,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: height / 2.5,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoriName,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                      color: !isSecondDesign
                          ? Colors.white
                          : Colors.white.withOpacity(0.8),
                      fontSize: 17),
                ),
                const SizedBox(
                  height: 3,
                ),
                isSecondDesign
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 6,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "${getViewCount(viewCount)}",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Text(
                            "${getViewCount(viewCount)} Viewers",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
