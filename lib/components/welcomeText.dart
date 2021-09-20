import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_6/constants/colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi, Ahmed',
              style: headerWhite,
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: lightgreen, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                // height: 0,
                // width: 70,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage('assets/images/ahmad.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: -15,
          right: -25,
          child: SvgPicture.asset(
            'assets/images/shap_circlerAvater.svg',
            height: 90,
          ),
        ),
      ],
    );
  }
}
