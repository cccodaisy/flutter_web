import 'dart:convert';
import 'dart:io';
import 'package:flutter_web/common/common.dart';
import 'package:http/http.dart' as http;

class V2Api {

  static getV2Api(uri) {
    return http.get(uri, headers: {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
    });
  }

  /// getGoodsInfo
  static Future<http.Response> getGoodsInfo(String goodsId) async {
    final uri = Uri.https(saracenDomain, '/api/goods-info', {'goods_ids': goodsId});

    print(uri);
    return await getV2Api(uri);
  }
}
