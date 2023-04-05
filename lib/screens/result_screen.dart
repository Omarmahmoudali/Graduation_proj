import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultScreens extends StatelessWidget {
  const ResultScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        color: Colors.blue,
                      )),
                  25.horizontalSpace,
                  const Text(
                    'Results',
                    style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  25.horizontalSpace,
                  Image.asset('assets/images/icon.png'),
                ],
              ),
              150.verticalSpace,
              const Center(
                child: Text(
                  'You Are\n Positive',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              50.verticalSpace,
              Image.asset('assets/images/true.png'),
              100.verticalSpace,
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  width: 250.w,
                  height: 45.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Treatment',
                          style: TextStyle(
                            fontFamily: 'Segoe',
                            fontSize: 20.sp,
                            color: Color(0xfff2b8ecf),
                          )),
                      20.horizontalSpace,
                      Image.asset("assets/images/treatment.png")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
