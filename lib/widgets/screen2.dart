import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final List<bool> isSelected = <bool>[true, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0.sp, right: 30.sp, left: 30.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How do you wish to repay?",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "choose one of our recommended plans  or make your \nown",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7), fontSize: 12.sp),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ToggleButtons(
                        renderBorder: false,
                        fillColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onPressed: (int index) {
                          setState(() {
                            for (int buttonIndex = 0;
                                buttonIndex < isSelected.length;
                                buttonIndex++) {
                              if (buttonIndex == index) {
                                isSelected[buttonIndex] = true;
                              } else {
                                isSelected[buttonIndex] = false;
                              }
                            }
                          });
                        },
                        isSelected: isSelected,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              height: 250.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Color(0xff44343e),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      height: 50.h,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                          border: isSelected[0]
                                              ? null
                                              : Border.all(
                                                  color: Colors.white
                                                      .withOpacity(0.5)),
                                          color: Colors.black.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: isSelected[0]
                                          ? Icon(
                                              Icons.safety_check,
                                              color: Colors.white,
                                              size: 35.sp,
                                            )
                                          : null,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 7.0.sp, top: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "₹ 4,247",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.sp),
                                              ),
                                              Text(
                                                "/mo",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.7),
                                                    fontSize: 20.sp),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            "for 12 months",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                          ),
                                          Text(
                                            "See calculations",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.sp),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 250.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Color(0xff7c7392),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      height: 50.h,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                          border: isSelected[1]
                                              ? null
                                              : Border.all(
                                                  color: Colors.white
                                                      .withOpacity(0.5)),
                                          color: Colors.black.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: isSelected[1]
                                          ? Icon(
                                              Icons.safety_check,
                                              color: Colors.white,
                                              size: 35.sp,
                                            )
                                          : null,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 7.0.sp, top: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "₹ 5,580",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.sp),
                                              ),
                                              Text(
                                                "/mo",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.7),
                                                    fontSize: 20.sp),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            "for 9 months",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                          ),
                                          Text(
                                            "See calculations",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.sp),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 250.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Color(0xff59698b),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      height: 50.h,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                          border: isSelected[1]
                                              ? null
                                              : Border.all(
                                                  color: Colors.white
                                                      .withOpacity(0.5)),
                                          color: Colors.black.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: isSelected[1]
                                          ? Icon(
                                              Icons.safety_check,
                                              color: Colors.white,
                                              size: 35.sp,
                                            )
                                          : null,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 7.0.sp, top: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "₹ 8,200",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.sp),
                                              ),
                                              Text(
                                                "/mo",
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.7),
                                                    fontSize: 20.sp),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            "for 6 months",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                          ),
                                          Text(
                                            "See calculations",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.sp),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff3b479b),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.sp),
                      topRight: Radius.circular(30.sp))),
              child: GestureDetector(
                onTap: (() {
                  setState(() {});
                }),
                child: Center(
                    child: Text(
                  "Proceed To EMI Selection",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
          )
        ],
      ),
      decoration: const BoxDecoration(
          color: Color(0xff161922),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    );
  }
}
