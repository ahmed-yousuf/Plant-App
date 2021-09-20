import 'package:flutter/material.dart';
import 'package:task_6/constants/colors.dart';

class BoxDesign extends StatelessWidget {
  final int num;

  const BoxDesign(this.num);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Was there Expanded
          Flexible(
            flex: 2,
            child: Container(
              //   height: 400,
              //  width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/plaint_${num + 1}.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Flexible(
            flex: 1,
            child: Container(
              //  width: 200,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Samantha'.toUpperCase(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: productStyle,
                        ),
                      ),
                      Text(
                        '\$400',
                        style: priceStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Indoor'.toUpperCase(),
                    style: tagStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
