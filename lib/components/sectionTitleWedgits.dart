import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_6/constants/colors.dart';

class SectionTitleWidget extends StatelessWidget {
  const SectionTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Positioned(
                      bottom: 1,
                      child: SvgPicture.asset(
                        'assets/images/shap_line.svg',
                        height: 10,
                      )),
                  Text(
                    'Recomended',
                    style: headerGrey,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'More',
                  style: titleButton,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
