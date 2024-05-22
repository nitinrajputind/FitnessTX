import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

enum RoundedButtonType { bgGradient, bgSGradient, textGradient }

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      required this.title,
      this.type = RoundedButtonType.bgGradient,
      required this.onPressed,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w700});
  final String title;
  final RoundedButtonType type;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: type == RoundedButtonType.bgSGradient
                ? Tcolor.secondaryG
                : Tcolor.primaryG,
            begin: Alignment.center,
            end: Alignment.centerRight),
        borderRadius: BorderRadius.circular(25),
        boxShadow: type == RoundedButtonType.bgGradient ||
                type == RoundedButtonType.bgSGradient
            ? const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 0.5,
                    offset: Offset(0, 0.5))
              ]
            : null,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textColor: Tcolor.primaryColor1,
        height: 50,
        minWidth: double.maxFinite,
        elevation: type == RoundedButtonType.bgGradient ||
                type == RoundedButtonType.bgSGradient
            ? 0
            : 1,
        color: type == RoundedButtonType.bgGradient ||
                type == RoundedButtonType.bgSGradient
            ? Colors.transparent
            : Tcolor.white,
        child: type == RoundedButtonType.bgGradient ||
                type == RoundedButtonType.bgSGradient
            ? Text(
                title.toString(),
                style: TextStyle(
                    color: Tcolor.white,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: Tcolor.primaryG,
                          begin: Alignment.center,
                          end: Alignment.centerRight)
                      .createShader(
                    Rect.fromLTRB(0, 0, bounds.width, bounds.height),
                  );
                },
                child: Text(
                  title.toString(),
                  style: TextStyle(
                      color: Tcolor.primaryColor1,
                      fontSize: fontSize,
                      fontWeight: fontWeight),
                ),
              ),
      ),
    );
  }
}
