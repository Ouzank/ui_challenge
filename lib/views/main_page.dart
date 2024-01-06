import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  Color main1 = Color(0xFF2eb1b7);
  Color main3 = Color(0xFF949495);
  Color main2 = Color(0xFFf2a612);
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bg,

    appBar: AppBar(
      backgroundColor: AppColors.bg,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded,color: AppColors.black,))
      ],
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
        child: PageView(
          controller: pageViewController,
          children: [HomePage()],
        ),
      ),
      bottomSheet: Container(
        color: AppColors.bg,
        child: BottomNavigationBar(
          elevation: 0,
          
            selectedItemColor: main1,
            showUnselectedLabels: true,
            useLegacyColorScheme: false,
            unselectedItemColor: main3,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Profile'),
            ]),
      ),
    );
  }
}
