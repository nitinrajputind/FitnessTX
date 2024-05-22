import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/common_widget/round_button.dart';
import 'package:fitnestx/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SafeArea(
        child: Container(
          width: media.width,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.width * 0.1),
              Image.asset(
                "assets/img/welcome.png",
                width: media.width * 0.75,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: media.width * 0.1),
              Text(
                "Welcome, Nitin",
                style: TextStyle(
                  color: Tcolor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "You are all set now, let's reach your \n goals together with us.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Tcolor.gray,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: media.height * 0.05),
              const Spacer(),
              RoundButton(
                title: 'Confirm',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainTabView()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
