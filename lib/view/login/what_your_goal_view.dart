import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/common_widget/round_button.dart';
import 'package:fitnestx/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselController buttonCarouselController = CarouselController();

  List goalArr = [
    {
      "image": "assets/img/goal_1.png",
      "title": "Improve Shape",
      "subtitle":
          "I have a low amount of body \n fat and need / want to build more muscle",
    },
    {
      "image": "assets/img/goal_2.png",
      "title": "Learn Tone",
      "subtitle": "I am  "
          'Skinny fat'
          " look thin but have \n no shape. I want to add learn muscle in right way.",
    },
    {
      "image": "assets/img/goal_3.png",
      "title": "Lose a Fat",
      "subtitle":
          "I have over 20 lbs to lose. I want to \n  drop all this fat and gain muscle mass.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArr
                    .map(
                      (gobj) => Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: Tcolor.primaryG,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: media.width * 0.1, horizontal: 25),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Column(
                            children: [
                              Image.asset(
                                gobj['image'].toString(),
                                width: media.width * 0.5,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(height: media.width * 0.1),
                              Text(
                                gobj['title'].toString(),
                                style: TextStyle(
                                  color: Tcolor.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                width: media.width * 0.1,
                                height: 1,
                                color: Tcolor.white,
                              ),
                              SizedBox(height: media.width * 0.02),
                              Text(
                                gobj['subtitle'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Tcolor.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  aspectRatio: 0.74,
                  initialPage: 2,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(height: media.height * 0.05),
                  Text(
                    "what you Goal ?",
                    style: TextStyle(
                      color: Tcolor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "It will help us to choose a best \n program for you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Tcolor.gray,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(height: media.height * 0.05),
                  RoundButton(
                    title: 'Go To Home',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeView()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
