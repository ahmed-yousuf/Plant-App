import 'package:flutter/material.dart';
import 'package:task_6/components/boxDesign.dart';
import 'package:task_6/components/sectionTitleWedgits.dart';

class SectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleWidget(),
        Container(
          height: 270,
          child: GridView.builder(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.4,
              crossAxisCount: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (context, index) {
              return BoxDesign(index);
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
