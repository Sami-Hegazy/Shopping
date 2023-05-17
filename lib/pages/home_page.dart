import 'package:flutter/material.dart';
import '../component/smooth_pageviewer.dart';
import '../helper/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SmoothPageView(),
      ),
    );
  }
}
