import 'package:dio/dio.dart';

abstract class Api {
  /// 获取文章列表
  /// [categoryId] 是文章分类id
  Future<Map> fetchArticleList({int pageNo, int pageSize = 20, String categoryId});

  /// 获取文章详情
  Future<Map> fetchArticleDetail({String articleId});
}

class ApiImpl implements Api {
  Dio _dio;

  ApiImpl() {
    _dio = Dio(
      BaseOptions(baseUrl: 'baseurl.com', connectTimeout: 20000, receiveTimeout: 20000),
    );
  }

  /// 接口请求
  Future<Map> fetchArticleList({int pageNo, int pageSize = 20, String categoryId}) async {
    final response = await _dio.get('list', queryParameters: {
      'pageNo': pageNo,
      'pageSize': pageSize,
      "category_id": categoryId,
    });
    Map data = response.data;
    return data;
  }

  Future<Map> fetchArticleDetail({String articleId}) async {
    final response = await _dio.get('detail', queryParameters: {
      'article_id': articleId,
    });
    Map data = response.data;
    return ValueUtil.toMap(data['data']);
  }
}