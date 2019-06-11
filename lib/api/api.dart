import 'dart:io';
import 'dart:convert' show json, utf8;
import 'dart:async';
import 'package:flutter_app/mould/apiMould.dart';
import 'package:flutter_app/utils/logUitl.dart' as Log;

class Api {
  final httpClient = HttpClient();
  final url = "flutter.udacity.com";


  Future<ApiMould> covert(
      String category, String from, String to, double amount) async {
    final uri = Uri.https(url, '/$category/convert',
        {'from': from, 'to': to, "amount": amount.toString()});

    Log.i("https", uri.toString());
    final httpRequest = await httpClient.getUrl(uri);
    final httpResponse = await httpRequest.close();
    Log.i("statusCode", httpResponse.statusCode);
    if (httpResponse.statusCode == 200 || httpResponse.statusCode == 400) {
      final body = await httpResponse.transform(utf8.decoder).join();
      ApiMould apiMould;
      try {
        final jsonBody = json.decode(body);
         apiMould = ApiMould.fromJson(jsonBody);
      } catch (e) {
        Log.error(e);
        apiMould =ApiMould(
            httpCode: httpResponse.statusCode,
            conversion: 0,
            status: "error",
            message: [e.toString()]);
      }
      return apiMould;
    } else {
      return ApiMould(
          httpCode: httpResponse.statusCode,
          conversion: 0,
          status: "error",
          message: [httpResponse.toString()]);
    }
  }
}
