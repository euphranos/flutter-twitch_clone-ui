// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/filter_widget.dart';

import '../models/functions.dart';

class CategoryWidgetHorizontal extends StatelessWidget {
  final List? filters;
  final String categoryName;
  final int? viewCount;
  final String categoryImage;
  const CategoryWidgetHorizontal({
    Key? key,
    this.filters,
    required this.categoryName,
    required this.viewCount,
    required this.categoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 80,
            child: Image.asset(categoryImage, fit: BoxFit.fill),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                getViewCountWithViewers(viewCount),
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(filters!.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: filterWidget(index: index, filters: filters),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
