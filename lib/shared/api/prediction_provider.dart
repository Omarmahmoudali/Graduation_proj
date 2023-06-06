import 'dart:io';
import 'package:flutter/material.dart';
import 'package:graduation_proj/shared/api/diagnose_service.dart';
import 'package:graduation_proj/shared/api/diagnosis_model.dart';

class PredictionProvider extends ChangeNotifier {
  bool _showLoading = false;
  bool get showLoading => _showLoading;
  DiagnosisModel? _diagnosisModel;
  DiagnosisModel? get diagnosisModel => _diagnosisModel;

  predictDisease(File? image) async {
    try {
      _showLoading = true;
      notifyListeners();
      _diagnosisModel = await DiagnoseService().predictDisease(image!);
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      throw e.toString();
    }
  }
}
