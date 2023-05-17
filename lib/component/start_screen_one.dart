import 'package:flutter/material.dart';

import '../helper/constant.dart';

class StartScreenOne extends StatelessWidget {
  const StartScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 36, top: 36),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.shopping_cart,
                  size: 36,
                  color: Color(0xFFEDCD80),
                ),
                SizedBox(width: 16),
                Text(
                  'Shoppy',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 36),
            child: RichText(
              text: const TextSpan(
                text: 'Please your\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  fontFamily: 'NotoSerif',
                ),
                children: <TextSpan>[
                  TextSpan(text: '\n', style: TextStyle(fontSize: 8)),
                  TextSpan(
                    text: 'eyes on the\n',
                    style: TextStyle(
                      fontFamily: 'NotoSerif',
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),
                  TextSpan(text: '\n', style: TextStyle(fontSize: 8)),
                  TextSpan(
                    text: 'trending\nitem',
                    style: TextStyle(
                      fontFamily: 'NotoSerif',
                      color: Color(0xFFEDCD80),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6,
                    ),
                  ),
                  TextSpan(
                    text: ' at\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'NotoSerif',
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),
                  TextSpan(text: '\n', style: TextStyle(fontSize: 8)),
                  TextSpan(
                    text: 'Shoppy',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'NotoSerif',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 36),
            child: Text(
              'use the voicher provided to \nbuy a shirt, because there are \nlots of free vouchers here!',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 2,
                fontFamily: 'NotoSerif',
                color: Colors.grey,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
