import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/common_widget/round_button.dart';
import 'package:fitnestx/common_widget/round_textfield.dart';
import 'package:fitnestx/view/login/complete_profile_view.dart';
import 'package:fitnestx/view/login/signup_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey There",
                  style: TextStyle(
                    color: Tcolor.gray,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Tcolor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: media.height * 0.05),
                const RoundTextfield(
                  hitText: 'Email',
                  icon: 'assets/img/email.png',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: media.height * 0.04),
                RoundTextfield(
                  hitText: 'Password',
                  icon: 'assets/img/lock.png',
                  obscureText: true,
                  rightIcon: TextButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        "assets/img/show_password.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: Tcolor.gray,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Forget your password",
                            style: TextStyle(
                                color: Tcolor.gray,
                                fontSize: 10,
                                decoration: TextDecoration.underline),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: media.width * 0.6),
                RoundButton(
                  title: 'Login',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompleteProfileView()));
                  },
                ),
                SizedBox(height: media.height * 0.04),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Tcolor.gray.withOpacity(0.5),
                    )),
                    Text(
                      " or ",
                      style: TextStyle(color: Tcolor.gray, fontSize: 12),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Tcolor.gray.withOpacity(0.5),
                    )),
                  ],
                ),
                SizedBox(height: media.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Tcolor.white,
                          border: Border.all(
                              width: 1, color: Tcolor.gray.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/img/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: media.width * 0.04),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Tcolor.white,
                          border: Border.all(
                              width: 1, color: Tcolor.gray.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/img/facebook.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.04),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account yet ? ",
                        style: TextStyle(
                          color: Tcolor.gray,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(
                            color: Tcolor.gray,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: media.height * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
