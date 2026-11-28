import 'package:flutter/material.dart';
import 'package:movie/core/resources/font_manager.dart';
import '../resources/color_manager.dart';


/// FROM Mohamed Fawzy You can Change it as you need or remove it



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
final TextStyle? fontWeight;
final Color? borderSideColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.fontWeight,
    this.borderSideColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorManager.primaryYellow,
        shape: RoundedRectangleBorder(
          side: BorderSide(color:borderSideColor??Colors.transparent,width: 1.5 ),
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? ColorManager.primaryBackground,
          fontSize: FontSize.s20,
          fontWeight: FontWeightManager.semiBold,
        ),
      ),
    );
  }
}
