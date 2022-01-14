import 'package:flutter/material.dart';
import 'package:flutter_web/screens/screens.dart';
import 'package:flutter_web/widgets/menu_drawer.dart';
import 'package:flutter_web/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
      ? AppBar(
        iconTheme: const IconThemeData(
          color: Colors.blue,
        ),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(_opacity),
        title: const Text(
          'Author',
          style: TextStyle(
            color: Color(0xFF077bd7),
            fontSize: 26,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w900,
            letterSpacing: 3,
          ),
        )
      ) : PreferredSize(
          preferredSize: Size(screenSize.width, 70),
          child: TopBarContents(_opacity),
      ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                // ElevatedButton(
                //   onPressed: () =>
                //       Navigator.push(
                //           context, MaterialPageRoute(builder: (_) => SamplePage())),
                //   child: const Text('Sample 1'),
                // ),
                // const SizedBox(height: 8),
                // ElevatedButton(
                //   onPressed: () =>
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (_) => PhotosHistoryAddPage())),
                //   child: const Text('Sample 2'),
                // ),
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.65,
                    width: screenSize.width,
                    child: Image.asset(
                      'assets/images/background.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(screenSize: screenSize),
                    FeaturedHeading(screenSize: screenSize),
                    FeaturedTiles(screenSize: screenSize),
                    MainHeading(screenSize: screenSize),
                    MainCarousel(),
                    SizedBox(height: screenSize.height / 10),
                    const BottomBar(),
                  ],
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}