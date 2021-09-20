import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_6/components/navBarWidgets.dart';

import 'package:task_6/components/topHeader.dart';
import 'package:task_6/constants/colors.dart';
import 'package:task_6/views/sectionView.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 1,
          width: 1,
          //margin: EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              'assets/images/icon_menu.svg',
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: green,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            TopHeader(),
            // SectionView(),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SectionView();
                },
                itemCount: 4,
              ),
            ),
            NavBarWidgets(),
          ],
        ),
      ),
    );
  }
}
