import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../data/datasources/get_users_datasource.dart';

final $GetUsersDataSourceImpl = Bind.singleton((i) => GetUsersDataSourceImpl());

class GetUsersDataSourceImpl implements GetUsersDataSource {
  final httpClient = Dio();
  
  @override
  Future<List<Map<String, dynamic>>> call() async {
    httpClient.options.baseUrl = 'https://64468f15ee791e1e2902ca7b.mockapi.io/api';
    httpClient.options.connectTimeout = const Duration(seconds: 5);
    httpClient.options.receiveTimeout = const Duration(seconds: 3);
    var res = await httpClient.get('/user');
    return List.from(res.data);
  }
}
  