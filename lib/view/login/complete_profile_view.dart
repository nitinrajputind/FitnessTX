import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/common_widget/round_button.dart';
import 'package:fitnestx/common_widget/round_textfield.dart';
import 'package:fitnestx/view/login/what_your_goal_view.dart';
import 'package:flutter/material.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/img/complete_profile.png",
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: media.height * 0.05),
                Text(
                  "Let's Complete Your Profile",
                  style: TextStyle(
                    color: Tcolor.gray,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "It will help us to know more about you !",
                  style: TextStyle(
                    color: Tcolor.gray,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: media.height * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Tcolor.lightGray,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                "assets/img/gender.png",
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                                color: Tcolor.gray,
                              ),
                            ),
                            Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  items: ["Male", "Female"]
                                      .map(
                                        (name) => DropdownMenuItem(
                                          value: name,
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                color: Tcolor.gray,
                                                fontSize: 14),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  hint: Text(
                                    "Choose Gender",
                                    style: TextStyle(
                                        color: Tcolor.gray, fontSize: 12),
                                  ),
                                  isExpanded: true,
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            const SizedBox(width: 8)
                          ],
                        ),
                      ),
                      SizedBox(height: media.width * 0.04),
                      RoundTextfield(
                        controller: txtDate,
                        hitText: 'Date of Birth',
                        icon: 'assets/img/date.png',
                        obscureText: true,
                      ),
                      SizedBox(height: media.width * 0.04),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextfield(
                              controller: txtDate,
                              hitText: 'Enter Your Weight',
                              icon: 'assets/img/weight.png',
                              obscureText: true,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: Tcolor.secondaryG),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "KG",
                              style:
                                  TextStyle(color: Tcolor.white, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.04),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextfield(
                              controller: txtDate,
                              hitText: 'Enter Your height',
                              icon: 'assets/img/hight.png',
                              obscureText: true,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: Tcolor.secondaryG),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "CM",
                              style:
                                  TextStyle(color: Tcolor.white, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.07),
                      RoundButton(
                        title: 'Next >',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const WhatYourGoalView()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
