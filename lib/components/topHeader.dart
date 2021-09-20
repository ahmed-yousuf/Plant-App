import 'package:flutter/material.dart';
import 'package:task_6/components/searchFiledWedgit.dart';
import 'package:task_6/components/welcomeText.dart';
import 'package:task_6/constants/colors.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                // margin: EdgeInsets.only(bottom: 60),
                height: 220,
                //width: double.infinity,
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: WelcomeText(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                //width: double.infinity,
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: SearchFiledWidget(),
          ),
        ],
      ),
    );
  }
}
