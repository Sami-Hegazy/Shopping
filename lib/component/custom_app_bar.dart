import 'package:flutter/material.dart';

import '../helper/constant.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String title;
  final IconData leadingIcon;
  final IconData actionIcons;
  final VoidCallback ontTap;
  const MyAppBar({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.actionIcons,
    required this.ontTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: teal),
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: GestureDetector(
          onTap: ontTap,
          child: Icon(
            leadingIcon,
            color: olive,
            size: 30,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            actionIcons,
            size: 30,
            color: purble,
          ),
        ),
      ],
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }
}
