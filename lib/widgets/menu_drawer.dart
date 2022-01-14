import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  final List<String> items = ['Home', 'Sample', 'PhotoAdd', 'Philosophy', 'Novels'];
  final List<String> paths = ['/', '/sample', '/photo-history-add', '/', '/'];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF077bd7),
        child: Padding(

          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menu(0),
              _padding(),
              _menu(1),
              _padding(),
              _menu(2),
              _padding(),
              _menu(3),
              _padding(),
              _menu(4),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2021 | Daisy',
                    style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _padding() {
    return Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Divider(
                color: Colors.blueGrey.shade400,
                thickness: 2,
              ),
            );
  }

  InkWell _menu(int i) {
    return InkWell(
      onTap: () { Navigator.pushNamed(context, paths[i]);},
      child: Text(
        items[i],
        style: const TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }
}
