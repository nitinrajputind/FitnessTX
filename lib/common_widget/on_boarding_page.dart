import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class OnBoardingPage extends StatelessWidget {
  final Map pobj;

  const OnBoardingPage({super.key, required this.pobj});


  @override
  Widget build(BuildContext context) {
    // Variable
    var media = MediaQuery.of(context).size;

    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pobj["image"].toString(),
            width: media.width,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: media.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              pobj["title"].toString(),
              style: TextStyle(
                color: Tcolor.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              pobj["subtitle"].toString(),
              style: TextStyle(
                color: Tcolor.gray,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
