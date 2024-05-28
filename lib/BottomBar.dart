import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';


import 'package:newfire/HOME%20PAGE.dart';

class BlurBottomBar extends StatefulWidget {
  const BlurBottomBar({super.key});

  @override
  State<BlurBottomBar> createState() => _BlurBottomBarState();
}

class _BlurBottomBarState extends State<BlurBottomBar> {
  int selectedIndex = 0;
  List Pages = [
    MyHomePage(title: '',),
    MyHomePage(title: '',),
    MyHomePage(title: '',),
    MyHomePage(title: '',),
    // BlurBottomBar()


  ];
  bool isChange = true;
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Pages[selectedIndex],

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex=0;
                    });
                  },
                  child: Icon(Icons.home)),
              selectedColor: Color(0xff73544C),


            ),

            /// Likes
            DotNavigationBarItem(
              icon:InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex=1;
                    });
                  },child: Icon(Icons.favorite)),
              selectedColor: Color(0xff73544C),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.search),
              selectedColor: Color(0xff73544C),
            ),

            /// Search


            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }