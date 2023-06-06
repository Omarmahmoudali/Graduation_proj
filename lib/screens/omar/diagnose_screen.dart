import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_proj/screens/omar/result_screen.dart';
import 'package:graduation_proj/shared/api/prediction_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class DiagnoseScreen extends StatefulWidget {
  const DiagnoseScreen({Key? key}) : super(key: key);

  @override
  State<DiagnoseScreen> createState() => _DiagnoseScreenState();
}

class _DiagnoseScreenState extends State<DiagnoseScreen> {
  pridect(File? img) async {
    await Provider.of<PredictionProvider>(context, listen: false)
        .predictDisease(img);
  }

  File? img;

  void uploadImg() async {
    var choosedimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      img = File(choosedimage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final image = buildImage(
    //     'https://th.bing.com/th/id/OIP.JDa_1X-NqdM1K-bZxp99DQHaEo?pid=ImgDet&rs=1');

    return Scaffold(
      body: Padding(
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
                  'Diagnose',
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
            100.verticalSpace,
            Center(
              child: DottedBorder(
                  borderType: BorderType.Circle,
                  dashPattern: const [8, 4],
                  strokeCap: StrokeCap.round,
                  padding: const EdgeInsets.all(5),
                  color: Colors.white,
                  strokeWidth: 1,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: const Color(0xfff2B8ECF),
                    backgroundImage: img == null ? null : FileImage(img!),
                  )),
            ),
            90.verticalSpace,
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                width: 250.w,
                height: 45.h,
                child: GestureDetector(
                  onTap: uploadImg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Upload Photo',
                          style: TextStyle(
                            fontFamily: 'Segoe',
                            fontSize: 20.sp,
                            color: Color(0xfff2b8ecf),
                          )),
                      20.horizontalSpace,
                      // Image.asset("assets/images/treatment.png")
                      const Icon(
                        Icons.upload_file,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              width: 250.w,
              height: 45.h,
              child: GestureDetector(
                onTap: () async {
                  await pridect(img);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResultScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Predict',
                        style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 20.sp,
                          color: Color(0xfff2b8ecf),
                        )),
                    20.horizontalSpace,
                    const Icon(
                      Icons.done_outline,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildImage(String url) => Image.network(
  //       url,
  //       width: 180,
  //       height: 180,
  //       fit: BoxFit.cover,
  //     );
}
