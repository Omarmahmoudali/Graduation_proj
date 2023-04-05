import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamTile extends StatelessWidget {
  const TeamTile({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 35,
        child: Image.asset(
          'assets/images/man.png',
          scale: 1,
        ),
      ),
      title: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Color(0xff1473E6),
              fontFamily: 'Segoe',
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
        side: const BorderSide(
          color: Colors.black,
        ),
      ),
    );
  }
}
