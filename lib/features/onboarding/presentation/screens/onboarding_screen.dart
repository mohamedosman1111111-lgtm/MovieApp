
import 'package:flutter/material.dart';
import 'package:movie/core/routes_manager/routes.dart';
import 'package:movie/features/onboarding/data/model/on_boarding_model.dart';
import 'package:movie/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentIndex=0;
 late PageController _pageController;
void _goNext(){
  _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
}
 void _goBack(){
   _pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
 }
 Future<void>_finish()async{
  final prefs= await SharedPreferences.getInstance();
  await prefs.setBool("isSeen", true);
  //todo make it go for login late
Navigator.pushReplacementNamed(context, Routes.mainLayoutRoute);
 }

  @override
  void initState() {
    _pageController=PageController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Column(
            children: [




              Expanded(
                child: PageView.builder(
                    itemBuilder: (context, index) =>OnBoardingItem(
                      slides: OnBoardingModel.slides[index],
                      index: index,
                      goNext: _goNext,
                      goBack: _goBack,
                      finish: _finish,
                    ) ,
                  controller: _pageController,

                  onPageChanged: (index){
                      _currentIndex=index;
                  },

                  itemCount: OnBoardingModel.slides.length,
                ),
              ),
            ],
          )
        ],

      ),
    );
  }
}
