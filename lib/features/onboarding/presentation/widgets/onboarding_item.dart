import 'package:flutter/material.dart';
import 'package:movie/core/resources/color_manager.dart';
import 'package:movie/core/resources/values_manager.dart';
import 'package:movie/features/onboarding/data/model/on_boarding_model.dart';
import 'package:movie/features/onboarding/presentation/widgets/onBoardingUi.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
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
    return Stack(

      children: [
        Positioned.fill(child: Image.asset(slides.image,fit: BoxFit.cover,)),
        if (slides.haveBottomModal) ...[
          Positioned.fill(
            child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.2, 0.8],
                    colors: [
                      Colors.transparent,
                      OnBoardingModel.gradientColors[index-1],
                    ],
                  ),
                ),
            ),
          ),

          //Modal bottom sheet
          Positioned(
            left: 0, right: 0, bottom: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                AppPadding.p16,
                AppPadding.p24,
                AppPadding.p16,
                AppPadding.p32,
              ),
              decoration: BoxDecoration(
                color: ColorManager.primaryBackground,
                borderRadius:
                const BorderRadius.vertical(top: Radius.circular(AppSize.s24)),
              ),
              child:OnBoardingUi(slides: slides,
                index: index,
                goNext: goNext,
                goBack: goBack,
                finish: finish,
              )
            ),
          ),
        ] else ...[
          Positioned.fill(
            child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                      colors: [Colors.transparent,ColorManager.primaryBackground])
                )
            ),
          ),
          Positioned(
            left:AppSize.s16 ,
            right:AppSize.s16 ,
            bottom: AppSize.s32,
            child: OnBoardingUi(slides: slides,
                index: index,
              goNext: goNext,
              goBack: goBack,
              finish: finish,
            )
          ),
        ],
      ],

    );
  }
}
