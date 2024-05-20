import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/common_widget/round_button.dart';
import 'package:fitnestx/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
                  "Create Your Account",
                  style: TextStyle(
                    color: Tcolor.gray,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: media.height * 0.05),
                const RoundTextfield(
                  hitText: 'First Name',
                  icon: 'assets/img/user_text.png',
                ),
                SizedBox(height: media.height * 0.04),
                const RoundTextfield(
                  hitText: 'Last Name',
                  icon: 'assets/img/user_text.png',
                ),
                SizedBox(height: media.height * 0.04),
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
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: Tcolor.gray,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "By continuing you accept Privacy and \n term of use",
                            style: TextStyle(
                              color: Tcolor.gray,
                              fontSize: 10,
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.04),
                RoundButton(title: 'Register', onPressed: () {}),
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
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account ? ",
                        style: TextStyle(
                          color: Tcolor.gray,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Login",
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
