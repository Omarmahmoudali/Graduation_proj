import 'dart:convert';
import 'dart:io';
import 'package:graduation_proj/shared/api/diagnosis_model.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class DiagnoseService {
  String url = 'https://mpox-xv9uh.ondigitalocean.app/predict';
  predictDisease(File image) async {
    try {
      var request = new http.MultipartRequest("POST", Uri.parse(url));
      if (image != null) {
        if (!image.path.startsWith('https')) {
          request.files.add(http.MultipartFile.fromBytes(
            "image",
            image.readAsBytesSync(),
            filename: 'image.jpg',
            contentType: MediaType('file', 'jpg'),
          ));
          var response = await request.send();
          final respStr = await response.stream.toBytes();
          var result = String.fromCharCodes(respStr);
          return DiagnosisModel.fromJson(json.decode(result));
        }
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
