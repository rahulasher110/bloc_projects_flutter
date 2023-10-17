import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                width: 375.w,
                margin: EdgeInsets.only(top: 34.h),
                child: Stack(alignment: Alignment.center, children: [
                  PageView(
                    children: [
                      _page(
                          0,
                          context,
                          'Next',
                          'First see learning',
                          'Forget about a for of paper all knowledge in one learning',
                          ''),
                      _page(
                          1,
                          context,
                          'Next',
                          'Connect with everyone',
                          'Always keep in touch with friends.Let\'s get connected',
                          ''),
                      _page(
                          2,
                          context,
                          'Get Started',
                          'Always fascinating learning',
                          'Anywhere anytime, just go through it and do your best.',
                          ''),
                    ],
                  ),
                  Positioned(
                      bottom: 100.h,
                      child: DotsIndicator(
                        dotsCount: 3,
                        decorator: DotsDecorator(
                            color: Colors.grey,
                            size: const Size.square(8.0),
                            activeColor: Colors.blue,
                            activeSize: const Size(18, 8),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ))
                ]))));
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subtitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: const Text('image1'),
        ),
        SizedBox(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
            width: 375.w,
            padding: EdgeInsets.only(left: 30.w, right: 20.w),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal),
            )),
        Container(
            width: 325.w,
            height: 40.h,
            margin: EdgeInsets.only(top: 100.h, left: 20.h, right: 20.h),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50.w)),
            child: Center(
                child: Text(
              buttonName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            )))
      ],
    );
  }
}
