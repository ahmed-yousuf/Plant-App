import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_6/constants/colors.dart';

class NavBarWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/nav_home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/nav_fav.svg'),
          label: 'My Washlist',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/nav_person.svg'),
          label: 'Profile',
        ),
      ],
      selectedItemColor: green,
    );
  }
}
