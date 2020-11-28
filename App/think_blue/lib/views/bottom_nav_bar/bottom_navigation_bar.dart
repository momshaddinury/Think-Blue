import 'package:flutter/material.dart';
import 'package:landing_page/utils/styles.dart';
import 'package:landing_page/utils/styles.dart';
import 'package:landing_page/views/dashboard_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  final int setIndex;

  BottomNavigationScreen({this.setIndex});

  @override
  BottomNavigationScreenState createState() => BottomNavigationScreenState();
}

class BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;
  bool isLoading = false;
  bool isLogin = false;

  List<Widget> pages = [
    DashboardScreen(),
    /*WishListScreen(),
    CategoryScreen(true),
    SearchScreen(true),
    ProfileScreen(true),*/
  ];

  @override
  void initState() {
    super.initState();
    //init();
    widget.setIndex == null ? selectedIndex = 0 : selectedIndex = widget.setIndex;
  }

  @override
  void dispose() {
    super.dispose();
  }

  /*init() async {
    isLogin = await getBool(IS_LOGGED_IN);
  }*/

  void onTabTapped(int index) async {
    setState(() {
      if (index == 0) {
        DashboardScreen();
      }
      /*else if (index == 1) {
        WishListScreen();
      } else if (index == 2) {
        CategoryScreen(true);
      } else if (index == 3) {
        SearchScreen(true);
      } else if (index == 4) {
        ProfileScreen(true);
      }*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if ((index != 4 || (index == 4 && isLogin)) && (index != 1 || (index == 1 && isLogin))) {
            selectedIndex = index;
            onTabTapped(selectedIndex);
            setState(() {});
          } else {
            //SignInScreen().launch(context);
          }
        },
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, size: 20, color: Theme.of(context).textTheme.headline6.color),
            activeIcon: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.lightBlueColor.withOpacity(0.2)),
              child: Icon(Icons.home, size: 20, color: AppColor.lightBlueColor),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, size: 20, color: Theme.of(context).textTheme.headline6.color),
            activeIcon: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.lightBlueColor.withOpacity(0.2)),
              child: Icon(Icons.home, size: 20, color: AppColor.lightBlueColor),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, size: 20, color: Theme.of(context).textTheme.headline6.color),
            activeIcon: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.lightBlueColor.withOpacity(0.2)),
              child: Icon(Icons.home, size: 20, color: AppColor.lightBlueColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20, color: Theme.of(context).textTheme.headline6.color),
            label: '',
            activeIcon: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.lightBlueColor.withOpacity(0.2)),
              child: Icon(Icons.home, size: 20, color: AppColor.lightBlueColor),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, size: 20, color: Theme.of(context).textTheme.headline6.color),
            activeIcon: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.lightBlueColor.withOpacity(0.2)),
              child: Icon(Icons.home, size: 20, color: AppColor.lightBlueColor),
            ),
          ),
        ],
      ),
      body: SafeArea(child: pages[selectedIndex]),
    );
  }
}
