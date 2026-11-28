import 'package:flutter/material.dart';
import 'package:movie/core/resources/assets_manager.dart';
import 'package:movie/core/resources/constants_manager.dart';

class OnBoardingModel {
  String image;
  String title;
  String subTitle;
  String buttonText;
  bool haveBottomModal;


  OnBoardingModel({
    required this.title,
    required this.image,
    required this.subTitle,
    required this.buttonText,
    required this.haveBottomModal,

  });
static List<Color> gradientColors=[
  Color(0xFF084250),
  Color(0xFF85210E),
  Color(0xFF4C2471),
  Color(0xFF601321),
  Color(0xFF2A2C30),
];
  static List<OnBoardingModel> slides = [
    OnBoardingModel(
      title: AppConstants.onBoardingTitleSlide0,
      image: ImageAssets.moviePosters,
      subTitle: AppConstants.onBoardingSubTitleSlide0,
      buttonText: "Explore Now",
      haveBottomModal: false,
    ),
    OnBoardingModel(
      title: AppConstants.onBoardingTitleSlide1,
      image: ImageAssets.onBoardingSlide1,
      subTitle: AppConstants.onBoardingSubTitleSlide1,
      buttonText: "Next",
      haveBottomModal: true,
    ),
    OnBoardingModel(
      title: AppConstants.onBoardingTitleSlide2,
      image: ImageAssets.onBoardingSlide2,
      subTitle: AppConstants.onBoardingSubTitleSlide2,
      buttonText: "Next",
      haveBottomModal: true,
    ),
    OnBoardingModel(
      title: AppConstants.onBoardingTitleSlide3,
      image: ImageAssets.onBoardingSlide3,
      subTitle: AppConstants.onBoardingSubTitleSlide3,
      buttonText: "Next",
      haveBottomModal: true,
    ),
    OnBoardingModel(
      title: AppConstants.onBoardingTitleSlide4,
      image: ImageAssets.onBoardingSlide4,
      subTitle: AppConstants.onBoardingSubTitleSlide4,
      buttonText: "Next",
      haveBottomModal: true,
    ),
    OnBoardingModel(
      title: AppConstants.onBoardingTitleSlide5,
      image: ImageAssets.onBoardingSlide5,
      subTitle: AppConstants.onBoardingSubTitleSlide5,
      buttonText: "Finish",
      haveBottomModal: true,
    ),
  ];
}
