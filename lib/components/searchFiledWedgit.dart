import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_6/constants/colors.dart';
import 'package:task_6/views/detailsScreen.dart';

class SearchFiledWidget extends StatelessWidget {
  const SearchFiledWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: lightgreen.withOpacity(0.5),
          offset: Offset(1, 10),
          spreadRadius: 5,
          blurRadius: 20,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        style: priceStyle,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: tagStyle,
          border: InputBorder.none,
          suffixIcon: Container(
            //margin: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetilsScreen()));
              },
              child: SvgPicture.asset(
                'assets/images/icon_search.svg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
