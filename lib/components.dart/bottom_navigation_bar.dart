import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../daos/navigation_status_dao.dart';

class BottomBar extends StatefulWidget {
  final String screenTitle;
  const BottomBar(
    this.screenTitle, {
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
// 當前頁面索引，預設為首頁頁面，索引 0
  int? currentIndex;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      context.read<NavigationStatusDao>().updateTodo(index);
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   // currentIndex = context.watch<NavigationStatusDao>().getCurrentIndex();
  //   currentIndex = 0;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 1,
          )
        ]),
        child: BottomNavigationBar(
            currentIndex:
                context.watch<NavigationStatusDao>().getCurrentIndex(),
            // currentIndex: currentIndex!,
            onTap: onTabTapped,
            selectedItemColor: const Color.fromRGBO(61, 158, 253, 1),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            selectedIconTheme: const IconThemeData(size: 30.0),
            unselectedIconTheme: const IconThemeData(size: 24.0),
            // landscapeLayout: BottomNavigationBarLandscapeLayout., // 手機橫向時的 BottomNavigationBar 排版
            // 每個按鈕
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '首頁',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_outlined),
                label: '獎盃',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                label: '鬧鈴',
              ),
              widget.screenTitle == "home"
                  ? const BottomNavigationBarItem(
                      icon: Icon(Icons.access_alarm),
                      label: '首頁鬧鈴',
                    )
                  : const BottomNavigationBarItem(
                      icon: Icon(Icons.access_alarm),
                      label: '其他鬧鈴',
                    )
            ]));
  }
}
