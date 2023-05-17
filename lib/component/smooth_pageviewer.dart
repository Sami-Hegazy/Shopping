import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store_app/component/start_screen_one.dart';
import 'package:store_app/pages/products_page.dart';

class SmoothPageView extends StatefulWidget {
  const SmoothPageView({super.key});

  @override
  _SmoothPageViewState createState() => _SmoothPageViewState();
}

class _SmoothPageViewState extends State<SmoothPageView> {
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage("assets/images/one.jpg"), context);
    precacheImage(const AssetImage("assets/images/two.jpg"), context);
    precacheImage(const AssetImage("assets/images/three.jpg"), context);
    precacheImage(const AssetImage("assets/images/four.jpg"), context);
    precacheImage(const AssetImage("assets/images/five.jpg"), context);
    precacheImage(const AssetImage("assets/images/six.jpg"), context);
    super.didChangeDependencies();
  }

  final List<Widget> _pages = [
    const StartScreenOne(),
    SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/images/two.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/images/three.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/images/four.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/images/five.jpg',
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/six.jpg',
          fit: BoxFit.cover,
        )),
  ];

  void _startTimer() {
    Future.delayed(const Duration(seconds: 6)).then((_) {
      final int nextPage = _pageController.page!.round() + 1;
      if (nextPage == _pages.length) {
        _pageController.animateTo(
          duration: const Duration(seconds: 3),
          curve: Curves.bounceOut,
          0,
        );
        _startTimer();
      } else {
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(seconds: 3),
          curve: Curves.easeInOutSine,
        );
        _startTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              PageView(
                controller: _pageController,
                children: _pages,
              ),
              Positioned(
                bottom: 26,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProductsPage.id);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEDCD80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: _pages.length,
                    effect: const WormEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.blue,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
