import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_proj/screens/about-us-class.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/menu.png'),
                    40.horizontalSpace,
                    Text(
                      'About us',
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          color: const Color(0xff2B8ECF),
                          fontSize: 35.sp),
                    )
                  ],
                ),
                Text(
                  'Developer Team :',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      color: const Color(0xff2B8ECF),
                      fontSize: 25.sp),
                ),
                const TeamTile(title: 'Mohamed Hesham Hussein'),
                10.verticalSpace,
                const TeamTile(title: 'Omar Alaaeldeen Abdalla'),
                10.verticalSpace,
                const TeamTile(title: 'Ahmed Mohamed Nassar'),
                10.verticalSpace,
                const TeamTile(title: 'Omar Mahmoud Ali'),
                10.verticalSpace,
                const TeamTile(title: 'Manar Nazeeh Saban'),
                10.verticalSpace,
                const TeamTile(title: 'Habeeba Ame Rezk'),
                10.verticalSpace,
                const TeamTile(title: 'Maha Mohamed Dawa'),
                10.verticalSpace,
                const TeamTile(title: 'Noran Reda Mahmoud'),
                10.verticalSpace,
                const TeamTile(title: 'Malak Mohamed Elzeftawy'),
                10.verticalSpace,
                const TeamTile(title: 'Rana Salaheldeen Abbas'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
