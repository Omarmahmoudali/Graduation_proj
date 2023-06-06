import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_proj/screens/omar/profile_class.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/profile_pic.png',
                    scale: 2,
                  ),
                ),
                const Text(
                  'Omar Ahmed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe',
                    fontSize: 25,
                    color: Color(0xfff1E6FFF),
                  ),
                ),
                30.verticalSpace,
                ProfileTile(
                  cardColor: Colors.white,
                  title: 'Email',
                  onPressed: () {},
                  prefixIcon: 'assets/images/email.png',
                  textColor: const Color(0xff1473E6),
                  subTitle: 'OmarAhmed22@gmail.com',
                  borderColor: Colors.black,
                ),
                20.verticalSpace,
                ProfileTile(
                  cardColor: const Color(0xff1473E6),
                  title: 'Gender',
                  onPressed: () {},
                  prefixIcon: 'assets/images/male.png',
                  textColor: Colors.white,
                  subTitle: 'male',
                  borderColor: Colors.black,
                ),
                20.verticalSpace,
                ProfileTile(
                  cardColor: Colors.white,
                  title: 'Phone number',
                  onPressed: () {},
                  prefixIcon: 'assets/images/phone.png',
                  textColor: const Color(0xff1473E6),
                  subTitle: '01022514896',
                  borderColor: Colors.black,
                ),
                20.verticalSpace,
                ProfileTile(
                  cardColor: const Color(0xff1473E6),
                  title: 'Password',
                  onPressed: () {},
                  prefixIcon: 'assets/images/password.png',
                  textColor: Colors.white,
                  subTitle: '12345Omar',
                  borderColor: Colors.black,
                ),
                20.verticalSpace,
                ListTile(
                  leading: SizedBox(
                    width: 70,
                    child: Image.asset(
                      'assets/images/logout.png',
                      scale: 1,
                    ),
                  ),
                  title: const Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Color(0xff1473E6),
                          fontFamily: 'Segoe',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
