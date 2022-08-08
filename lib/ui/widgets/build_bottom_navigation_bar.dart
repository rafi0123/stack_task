import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuildBottomNavigationBar extends StatefulWidget {
  const BuildBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<BuildBottomNavigationBar> createState() =>
      _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        //type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.av_timer),
            label: 'Bsdk chup',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_smart_record),
            label: 'More',
            // backgroundColor: Colors.blue,
          ),
        ]);
  }
}
