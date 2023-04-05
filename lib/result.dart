import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = buildImage(
        'https://th.bing.com/th/id/OIP.JDa_1X-NqdM1K-bZxp99DQHaEo?pid=ImgDet&rs=1');

    return Scaffold(
      body: Center(
        child: DottedBorder(
            borderType: BorderType.Circle,
            dashPattern: const [8, 4],
            strokeCap: StrokeCap.round,
            padding: const EdgeInsets.all(5),
            color: Colors.white,
            strokeWidth: 1,
            child: ClipOval(child: image)),
      ),
    );
  }

  Widget buildImage(String url) => Image.network(
        url,
        width: 180,
        height: 180,
        fit: BoxFit.cover,
      );
}
