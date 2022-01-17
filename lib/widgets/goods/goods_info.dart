
import 'package:flutter/material.dart';
import 'package:flutter_web/common/common.dart';
import 'package:flutter_web/model/goods_info_model.dart';
import 'package:flutter_web/utils/goods_utils.dart';
class GoodsInfo extends StatelessWidget {
  const GoodsInfo({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.goodsInfo,
    required this.goodsId,
    required this.isUser,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final GoodsInfoModel goodsInfo;
  final String goodsId;
  final bool isUser;


  @override
  Widget build(BuildContext context) {
    final String price = GoodsUtils.getPrice(goodsInfo.goodsTemplate, isUser);


    return Padding(
      padding: const EdgeInsets.all(SaracenSize.gap_xs),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(bottom: SaracenSize.gap_xs),
            child: Text(title,
                style: TextStyle(
                  color: SaracenColors.gray1,
                  fontSize: SaracenSize.font_l,
                  fontWeight: FontWeight.bold,
                )
            ),
          ),
          Container(
            child: Text(subTitle,
                style: TextStyle(
                  color: SaracenColors.gray2,
                  fontSize: SaracenSize.font_m,
                )
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(price,
                style: TextStyle(
                  color: SaracenColors.gray1,
                  fontSize: SaracenSize.font_xl,
                )
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text('상품코드 $goodsId',
                style: TextStyle(
                  color: SaracenColors.gray2,
                  fontSize: SaracenSize.font_m,
                )
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text('배송비 배송비..?',
                style: TextStyle(
                  color: SaracenColors.gray2,
                  fontSize: SaracenSize.font_m,
                )
            ),
          ),
        ],
      ),
    );
  }
}