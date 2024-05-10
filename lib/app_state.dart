import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _documentoPDFConstante = '';
  String get documentoPDFConstante => _documentoPDFConstante;
  set documentoPDFConstante(String value) {
    _documentoPDFConstante = value;
  }
}
