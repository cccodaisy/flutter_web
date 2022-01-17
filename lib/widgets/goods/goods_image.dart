
import 'package:flutter/material.dart';
import 'package:flutter_web/common/common.dart';

class GoodsImage extends StatelessWidget {
  const GoodsImage({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    print('imageUrl: $imgUrl');
    return GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (_) {
          //       return ImgViewScreen(imgUrl);
          //     })
          // );
        },
        child: Padding(
          padding: const EdgeInsets.all(SaracenSize.gap_xs),
          child: Hero(
            tag: "imageHero",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(SaracenSize.r),
              child: Image.network(
                  imgUrl,
                  fit: BoxFit.fitWidth
              ),
            ),
          ),
        )
    );
  }
}