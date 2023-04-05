import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.prefixIcon,
    required this.textColor,
    required this.subTitle,
    required this.borderColor,
    required this.cardColor,
  }) : super(key: key);

  final String title;
  final Function() onPressed;
  final String prefixIcon;
  final Color textColor;
  final String subTitle;
  final Color borderColor;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: cardColor,
      onTap: onPressed,
      leading: SizedBox(
        width: 70,
        child: Image.asset(
          prefixIcon,
          scale: 1,
        ),
      ),
      title: Center(
        child: Text(
          title,
          style: TextStyle(
              color: textColor,
              fontFamily: 'Segoe',
              fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Center(
        child: Text(
          subTitle,
          style: TextStyle(
            color: textColor,
            fontFamily: 'Segoe',
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
        side: BorderSide(
          color: borderColor,
        ),
      ),
    );
  }
}
