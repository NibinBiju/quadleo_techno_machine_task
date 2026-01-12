import 'package:dio/dio.dart';

class DioHelper {
  late final Dio dio;

  DioHelper() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
      ),
    );
  }

  Future<Response> get(String url) async {
    try {
      final response = await dio.get(url);
      return response;
    } on DioException catch (e) {
      throw Exception(e.response?.data ?? e.message ?? 'Network error');
    }
  }
}
