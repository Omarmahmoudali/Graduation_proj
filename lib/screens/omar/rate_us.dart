import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateUs extends StatelessWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/photo_2022-12-11_23-07-35.jpg'),
            30.verticalSpace,
            const Text(
              'Your Opinions matters to us.\n tap a star to rate it on the \n app store',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Segoe',
                fontSize: 15,
                color: Color(0xfff1E6FFF),
              ),
            ),
            30.verticalSpace,
            Center(
              child: RatingBar.builder(
                minRating: 1,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
