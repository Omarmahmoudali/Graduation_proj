import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_proj/shared/api/prediction_provider.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<PredictionProvider>(builder: (_, state, __) {
      if (state.showLoading) {
        return const CircularProgressIndicator();
      } else {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
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
                Center(
                  child: Text(
                    'You Are\n Negative ${state.diagnosisModel?.prediction}',
                    style: const TextStyle(
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
                              color: const Color(0xfff2b8ecf),
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
        );
      }
    }));
  }
}
