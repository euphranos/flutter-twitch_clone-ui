// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class filterWidget extends StatelessWidget {
  final int index;
  final List? filters;
  const filterWidget({
    Key? key,
    required this.index,
    required this.filters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        filters![index],
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
