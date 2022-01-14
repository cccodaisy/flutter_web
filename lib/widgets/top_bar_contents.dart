import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(
    this.opacity, {
    Key? key,
  }) : super(key: key);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [false, false, false, false];
  final List<String> items = ['Sample', 'PhotoAdd', 'Philosophy', 'Novels'];
  final List<String> paths = ['/sample', '/photo-history-add', '/', '/'];
  final List<IconData> icons = [Icons.location_on, Icons.date_range, Icons.people, Icons.wb_sunny];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        color: Colors.white.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenSize.width / 4,
                    ),
                    const Text(
                      'Author',
                      style: TextStyle(
                        color: Color(0xFF077bd7),
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    _menus(0),
                    SizedBox(width: screenSize.width / 15),
                    _menus(1),
                    SizedBox(width: screenSize.width / 15),
                    _menus(2),
                    SizedBox(width: screenSize.width / 15),
                    _menus(3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell _menus(i) {
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHovering[i] = true : _isHovering[i] = false;
        });
      },
      onTap: () {
        Navigator.pushNamed(context, paths[i]);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            items[i],
            style: TextStyle(
                color: _isHovering[i] ? const Color(0xFF077bd7) : const Color(0xFF077bd7),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[i],
            child: Container(
              height: 2,
              width: 20,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
