import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:treeved_testapp/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ((context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(title: "title"));
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool emiSelectione = false;
  bool emiSelectionc = true;

  Widget slider = SleekCircularSlider(
    max: 487491,
    appearance: CircularSliderAppearance(
      angleRange: 350,
      startAngle: 270,
      size: 300.sp,
      customWidths: CustomSliderWidths(
          trackWidth: 15, progressBarWidth: 20, handlerSize: 20),
      customColors: CustomSliderColors(
          dotColor: Colors.black,
          trackColor: Color(0xffFFE9DC),
          hideShadow: true,
          progressBarColor: Color(0xffd28d72),
          shadowMaxOpacity: 20.0),
      infoProperties: info03,
    ),
    initialValue: 60,
    onChange: (double value) {
      print(value);
    },
  );
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.7,
          maxChildSize: 0.9,
          minChildSize: 0.32,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
                controller: scrollController,
                child: GestureDetector(
                  onTap: (() {
                    _showModalBottomSheet2(context);
                  }),
                  child: Text("color: Colors.black,"),
                ));
          }),
    );
  }

  void _showModalBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 0.9,
          minChildSize: 0.32,
          expand: false,
          builder: (context, scrollController) {
            return Column(
              children: [],
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111419),
      appBar: AppBar(
        backgroundColor: Color(0xff111419),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff161922),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xff161922),
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.question_mark)),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          // Text("Hello",style: TextStyle(color: Colors.white),),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 750.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff161922),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.all(30.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      emiSelectione
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "nikunj how much do you need",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25.sp),
                                ),
                                SizedBox(
                                  height: 5.sp,
                                ),
                                Text(
                                  "move the dial and set any amount you need  upto ₹487891",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 12.sp),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sahil how much do you need",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25.sp),
                                ),
                                SizedBox(
                                  height: 5.sp,
                                ),
                                Text(
                                  "move the dial and set any amount you need  upto ₹487891",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        height: 450.h,
                        width: double.infinity - 50.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(50),
                              child: slider,
                            ),
                            const Text(
                              "stash is instant.money will be credit \n    within second",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // child: DraggableScrollableSheet(
                //   initialChildSize: 0.7,
                //   maxChildSize: 0.9,
                //   minChildSize: 0.32,
                //   expand: true,
                //   builder: (context, scrollController) {
                //     return SingleChildScrollView(
                //       controller: scrollController,
                //       child: Container(
                //         color: Colors.black,
                //       )
                //     );
                //   }),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 100.h,
                width: double.infinity,
                child: GestureDetector(
                  onTap: (() {
                    _showModalBottomSheet(context);
                    setState(() {
                      emiSelectione = true;
                    });
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
                decoration: BoxDecoration(
                    color: Color(0xff3b479b),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.sp),
                        topRight: Radius.circular(30.sp))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
