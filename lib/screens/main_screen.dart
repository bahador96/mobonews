import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/screens/add_content_screen.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/homepage.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(17),
          topRight: Radius.circular(17),
        )),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: buttonRed,
          currentIndex: _selectedBottomNavigationItem,
          onTap: (index) {
            setState(() {
              _selectedBottomNavigationItem = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/home.png'),
              activeIcon: Image.asset('images/home.png'),
              // activeIcon: Image.asset('images/icon_active_home.png'),
              label: 'item1',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/discover.png'),
              activeIcon: Image.asset('images/discover.png'),
              label: 'item2',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/add_circle.png'),
              activeIcon: Image.asset('images/add_circle.png'),
              // activeIcon: Image.asset('images/icon_add_navigation_active.png'),
              label: 'item3',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/save_2.png'),
              activeIcon: Image.asset('images/save_2.png'),
              label: 'item4',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Color(
                      0xffC5C5C5,
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/profile.png'),
                  ),
                ),
              ),
              activeIcon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Color(0xffF35383),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/profile.png'),
                  ),
                ),
              ),
              label: 'item5',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayOut(),
      ),
    );
  }

  List<Widget> getLayOut() {
    return <Widget>[
      HomeScreen(),
      HomePage(),
      AddContentScreen(),
      HomeScreen(),
      HomePage(),
    ];
  }
}
