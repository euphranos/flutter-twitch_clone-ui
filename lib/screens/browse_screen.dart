import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/widgets/category_widget_horizontal.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "Browse",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allCategories.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return CategoryWidgetHorizontal(
                    categoryName: "${allCategories[index].categoriName}",
                    filters: allCategories[index].filters,
                    viewCount: allCategories[index].viewCount,
                    categoryImage: "${allCategories[index].categoriImage}",
                  );
                }))
          ],
        ),
      ),
    );
  }
}
