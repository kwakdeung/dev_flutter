import 'package:dory/components/dory_colors.dart';
import 'package:dory/pages/add_medicine/add_medicine_page.dart';
import 'package:dory/pages/history/history_page.dart';
import 'package:dory/pages/today/today_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _pages = [
    TodayPage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(),
          body: _pages[_currentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: _onAddMedicine,
            child: const Icon(CupertinoIcons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: _buildBottomAppBar(),
        ),
      ),
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 0,
      child: Container(
        height: kBottomNavigationBarHeight,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton(
                child: Icon(
                  CupertinoIcons.checkmark,
                  color: _currentIndex == 0
                      ? DoryColors.primaryColor
                      : Colors.grey,
                ),
                onPressed: () => _onCurrentPage(0)),
            CupertinoButton(
                child: Icon(
                  CupertinoIcons.text_badge_checkmark,
                  color: _currentIndex == 1
                      ? DoryColors.primaryColor
                      : Colors.grey,
                ),
                onPressed: () => _onCurrentPage(1)),
          ],
        ),
      ),
    );
  }

  void _onCurrentPage(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }

  void _onAddMedicine() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const AddMedicinePage()));
  }
}
