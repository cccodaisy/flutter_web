import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/api/v2_api.dart';
import 'package:flutter_web/common/args.dart';
import 'package:flutter_web/common/common.dart';
import 'package:flutter_web/model/goods_info_model.dart';
import 'package:flutter_web/widgets/goods/goods_image.dart';
import 'package:flutter_web/widgets/goods/goods_info.dart';
import 'package:http/http.dart' as http;

class GoodsDetailScreen extends StatefulWidget {
  static const routeName = '/goods';

  const GoodsDetailScreen(
      {Key? key,}
      ) : super(key: key);

  @override
  _GoodsDetailScreenState createState() => _GoodsDetailScreenState();
}


class _GoodsDetailScreenState extends State<GoodsDetailScreen> with TickerProviderStateMixin {
  double _btnHeight = 0;
  late AnimationController _animationController;
  late GoodsInfoModel goodsInfo;
  int _duration = 800;
  String title = '상품명';
  String brandName = '브랜드';
  String subTitle = '';
  bool _isLoading = true;
  String imgUrl = '';
  String contentImgUrl = '';

  // TODO: Scroll position
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _toggleAnimation();
    // _loadGoodsInfo();
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  // _loadGoodsInfo() {
  //   getGoodsInfo(widget.goodsId);
  // }



  void _toggleAnimation() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: _duration))
      ..addListener(() { setState(() { }); });
  }

  popAndLoadUrl(BuildContext context, String url) {
    return Navigator.pop(context, url);
  }

  @override
  Widget build(BuildContext context) {
    // _scrollPosition < screenSize.height * 0.40

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    // title = goodsInfo.goodsTemplate.title!;
    // subTitle = goodsInfo.goodsTemplate.subTitle!;
    // brandName = goodsInfo.goodsTemplate.brand!.name!;
    // _isLoading = false;
    // imgUrl = 'https://s.thesaracen.com/img/template/goods/${widget.goodsId}/$thumbnail';
    // contentImgUrl = 'https://active.thesaracen.com/img/template/goods/${widget.goodsId}/$contentImage';

    // TODO: userKey 얻기 ! 로그인유무 확인 _userId 로? 자동로그인 되어도 _isLogOn 은 데이터가 없을수 있음!
    String userKey = '';
    int per = 15;
    int page = 0;

    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: SaracenColors.dark1,
          title: Text( '${args.goodsId}',
            style: const TextStyle(
                color: SaracenColors.gray1,
                fontSize: SaracenSize.font_l
            ),
          ),
        ),
        body: Container(child: Text('${args.goodsId}'))
        // body: Container(
        //     child: _isLoading
        //         ? const Center(
        //         child: CircularProgressIndicator(
        //             color: SaracenColors.pink2,
        //             backgroundColor: SaracenColors.dark2,
        //             semanticsLabel: 'loading...'
        //         )
        //     )
        //         : Column(
        //       children: [
        //         GoodsImage(imgUrl: imgUrl),
        //         GoodsInfo(title: '[$brandName] $title', subTitle: subTitle, goodsInfo: goodsInfo, goodsId: widget.goodsId, isUser: widget.isUser),
        //       ],
        //     )
        // ),
    );
  }
}