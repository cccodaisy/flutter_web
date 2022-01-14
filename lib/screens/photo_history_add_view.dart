import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

const Color kDarkGray = Color(0xFFA3A3A3);
const Color kLightGray = Color(0xFFF1F0F5);

class PhotosHistoryAddPage extends StatelessWidget {
  static const routeName = '/photo-history-add';
  const PhotosHistoryAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ImagePickerWidget();
}

enum PageStatus { LOADING, ERROR, LOADED }

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final _photos = <Image>[];
  PageStatus _pageStatus = PageStatus.LOADED;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample 2')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _photos.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildAddPhoto();
                }
                var image = _photos[index - 1];
                return Stack(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                          margin: const EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          color: kLightGray,
                          child: image),
                    ),
                  ],
                );
              },
            ),
          ),
          if (_pageStatus == PageStatus.LOADED)
            Container(
              margin: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            )
        ],
      ),
    );
  }

  InkWell _buildAddPhoto() {
    if (_pageStatus == PageStatus.LOADING) {
      return InkWell(
        onTap: () => null,
        child: Container(
          margin: const EdgeInsets.all(5),
          height: 100,
          width: 100,
          color: kDarkGray,
          child: const Center(child: Text('Please wait..')),
        ),
      );
    } else {
      return InkWell(
        onTap: () => _onAddPhotoClicked(context),
        child: Container(
          margin: const EdgeInsets.all(5),
          height: 100,
          width: 100,
          color: kDarkGray,
          child: const Center(
            child: Icon(
              Icons.add_to_photos,
              color: kLightGray,
            ),
          ),
        ),
      );
    }
  }

  Future<void> _onAddPhotoClicked(context) async {
    setState(() {
      _pageStatus = PageStatus.LOADING;
    });

    final image = await ImagePickerWeb.getImageAsWidget();
    print(image);

    if (image != null) {
      setState(() {
        _photos.add(image);
        _pageStatus = PageStatus.LOADED;
      });
    } else {
      setState(() {
        _pageStatus = PageStatus.LOADED;
      });
    }
  }
}