import 'dart:convert';

import 'package:flutter_web/api/v2_api.dart';
import 'package:flutter_web/common/common.dart';
import 'package:flutter_web/model/goods_info_model.dart';
import 'package:http/http.dart' as http;

class GoodsUtils {

  static String getPrice(GoodsTemplate goodsTemplate, bool isUser) {
    final marketPrice = '${getMarketPrice(goodsTemplate)}';
    final resultPrice = '${marketPrice.replaceAll(commaReg, ',')}원';

    return resultPrice;
  }

  static int getMarketPrice(GoodsTemplate goodsTemplate) {
    late int marketPrice = goodsTemplate.goodsTemplatePriceRetail['market_price'];
    if(marketPrice < 1) {
      marketPrice = goodsTemplate.goodsTemplatePriceLevel['market_price'];
      if (marketPrice < 1) {
        return 0;
      }
    }

    return marketPrice;
  }

  Future<dynamic> getGoodsInfo(String goodsId) async {
    http.Response response = await V2Api.getGoodsInfo(goodsId);
    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      final goodsInfo = GoodsInfoModel.fromJson(responseJson["goodsInfo"][0]);
      final String? thumbnail = goodsInfo.thumbnail!;
      final String? contentImage = goodsInfo.contentImage!;

      return goodsInfo;
    }

    return null;
  }

}