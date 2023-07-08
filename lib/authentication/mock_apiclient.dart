import 'dart:developer';

import 'package:dio/dio.dart';

class MockApiClient {
  var httpClient = Dio();
  Options options = Options(
      // receiveDataWhenStatusError: true,
      // receiveTimeout: 60 * 1000, // 60 seconds
      // headers: {
      //   "Content-Type": "application/json",
      //   "Authorization":
      //       "Basic MDE2MTAzMDEwNzpTSWdZTVRCYklzSUNoV2Q2Zlo3cFV5SmhlVA==",
      // },
      );
  postData(json, url) async {
    try {
      var response = await httpClient.post('http://192.168.1.5:3000$url',
          data: json, options: options);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      log('Try catch : ' + e.toString());
    }
  }
}
