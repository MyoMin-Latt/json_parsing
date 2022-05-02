import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:xml/xml.dart' as xml;

extension StringExtensions on String {
  String toEnvelope() {
    var envlope = '''
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    $this
  </soap:Body>
</soap:Envelope>
''';
    return envlope;
  }

  dynamic fromXmlToJson() {
    try {
      final parsedXml = xml.XmlDocument.parse(this);
      final decoded = jsonDecode(parsedXml.text.toString());
      return decoded;
    } on xml.XmlParserException {
      return '';
    }
  }

  // dynamic decodeToJson() {
  //   return jsonDecode(this);
  // }

  int toInt() {
    try {
      var numVal = num.tryParse(this) ?? 0;
      return int.parse(numVal.toString());
    } catch (e) {
      return 0;
    }
  }

  double toDouble() {
    try {
      var numVal = num.tryParse(this) ?? 0;
      return double.parse(numVal.toString());
    } catch (e) {
      return 0.0;
    }
  }

  bool toBoolean() {
    return toLowerCase() == 'true' ? true : false;
  }

  String getShortNameFromFullName() {
    if (isEmpty) return '';

    var str = '';

    final words = split(' ');
    for (var i = 0; i < words.length; i++) {
      str += words[i][0];
    }
    return str;
  }

  String getVimeoId() {
    final strs = split('/');
    // print('VimeoId = ' + strs.last);
    return strs.last;
  }

  Future<String> imageToBase64() async {
    if (isEmpty) return '';

    File imageFile = File(this);
    Uint8List imageBytes = await imageFile.readAsBytes();
    return base64.encode(imageBytes);
  }
}

extension ContextExtension on BuildContext {
  double getMatchParentWidth() {
    final size = MediaQuery.of(this).size;
    return size.width;
  }

  double getMatchParentHeight() {
    final size = MediaQuery.of(this).size;
    return size.height;
  }
}
