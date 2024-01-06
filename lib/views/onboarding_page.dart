import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:heyflutter_challenge_1/themes/app_colors.dart';

import '../widgets/custom_text.dart';
import 'main_page.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});
  Color main2 = Color(0xFFf2a612);
  Color main1 = Color(0xFF2eb1b7);
  Color main3 = Color(0xFF949495);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 35,
            ),
         
            Text.rich(
              TextSpan(children: [
                TextSpan(text: 'Home', style: TextStyle(color: main1)),
                TextSpan(text: 'bhase', style: TextStyle(color: main2))
              ]),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: AppColors.bg,
            image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                    'assets/heyflutterchallenge1.png'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(children: [
                TextSpan(text: 'Looking ', style: TextStyle(color: main1)),
                TextSpan(text: 'for an ', style: TextStyle(color: main2)),
                TextSpan(
                    text: 'elegant house this is the place', style: TextStyle())
              ]),
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Welcome friends, are you looking for us?',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: main3, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'Congratulations you have found us',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: main3, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.off(()=>MainPage(),transition: Transition.rightToLeftWithFade,duration:2000.ms);
              },
              child: Container(
                width: 100,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: main1, borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Next',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}