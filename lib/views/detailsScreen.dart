import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_6/constants/colors.dart';

class DetilsScreen extends StatelessWidget {
  const DetilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                            vertical: 60,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              // 1- Sun Light icon
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    shadows,
                                  ],
                                ),
                                child: SvgPicture.asset(
                                  'assets/images/icon_light.svg',
                                ),
                              ),
                              // 2- Second Icon of temprature Degree
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    shadows,
                                  ],
                                ),
                                child: SvgPicture.asset(
                                    'assets/images/icon_temp.svg'),
                              ),
                              // 3- Third Icon of Wind HoOob
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    shadows,
                                  ],
                                ),
                                child: SvgPicture.asset(
                                    'assets/images/icon_oxygen.svg'),
                              ),
                              // 4- Four Icon of Oxugen HoOowW
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    shadows,
                                  ],
                                ),
                                child: SvgPicture.asset(
                                    'assets/images/icon_wind.svg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.pink,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              bottomLeft: Radius.circular(70),
                            ),
                            boxShadow: [shadows],
                            image: DecorationImage(
                                image: AssetImage('assets/images/plaint_2.png'),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                    'assets/images/icon_backArrow.svg'),
                              ),
                              SvgPicture.asset('assets/images/icon_more.svg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                alignment: Alignment.center,
                //color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Angelica',
                          style: TextStyle(
                            color: greyText,
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$500',
                          style: TextStyle(
                            color: green,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Indoor',
                      style: TextStyle(
                        color: green,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
