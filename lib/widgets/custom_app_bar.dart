import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsIconTheme: IconThemeData(color: Colors.white, size: 30),
      backgroundColor: Colors.black,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
          ),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
            child: Icon(
              AntIcons.userOutlined,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.videoOutline,
              size: 38,
            )),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            AntIcons.inboxOutlined,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.commentOutline,
              size: 30,
            )),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              AntIcons.searchOutlined,
              size: 34,
            )),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
