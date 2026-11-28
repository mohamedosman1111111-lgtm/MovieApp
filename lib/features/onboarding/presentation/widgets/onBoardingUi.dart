import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie/core/resources/color_manager.dart';
import 'package:movie/core/resources/font_manager.dart';
import 'package:movie/core/resources/values_manager.dart';
import 'package:movie/core/widgets/custom_button.dart';
import 'package:movie/features/onboarding/data/model/on_boarding_model.dart';

class OnBoardingUi extends StatelessWidget {
  const OnBoardingUi({
    super.key,
    required this.slides,
    required this.index,
    required this.goNext,
    required this.goBack,
    required this.finish
  });
  final OnBoardingModel slides;
  final int index;
  final VoidCallback goNext;
  final VoidCallback goBack;
  final VoidCallback finish;
  @override
  Widget build(BuildContext context) {
    bool haveModalBottom=slides.haveBottomModal;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [ Text(
        slides.title,
        textAlign: TextAlign.center,
        style:  TextStyle(
          color: ColorManager.white,
          fontSize: haveModalBottom ? FontSize.s24  :FontSize.s36,
          fontWeight:haveModalBottom? FontWeightManager.bold:FontWeightManager.medium,
        ),
      ),
        Text(
          slides.subTitle,
          textAlign: TextAlign.center,
          style:  TextStyle(
            color: haveModalBottom ? ColorManager.white:ColorManager.grey,
            fontSize: FontSize.s20,
            fontWeight: FontWeightManager.regular,
          ),
        ),
        SizedBox(height: AppSize.s24.h,),
        CustomButton(text: slides.buttonText, onPressed: (){
          if(index!=5){
            goNext();
          }else{
            finish();
          }
        }),

        if(index >1)...[
          SizedBox(height: AppSize.s16.h,),
        CustomButton(
            text: "Back",
            backgroundColor: ColorManager.primaryBackground,
            textColor: ColorManager.primaryYellow,
            borderSideColor: ColorManager.primaryYellow,
            onPressed: (){goBack();}),

        ]


      ],


    );
  }
}
