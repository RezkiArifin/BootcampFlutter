import 'package:dio/dio.dart';
import 'package:sanber_app/tugas/tugas13/config/base_url.dart';

class DioHttp {
  static Map<String, dynamic> headers = {
    "Accept": "Application/json",
    "Content-Type": "Application/json",
  };

  static Dio request = Dio(BaseOptions(baseUrl: baseUrl, headers: headers));
}
