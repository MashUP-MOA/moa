import 'package:flutter/material.dart';
import 'home.dart';
import 'recommend.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MarketPageState();
}

class _MarketPageState extends State<MyWidget> {
  int _selectedIndex = 0;

  final List _widgetOptions = [
    HomeWidget(),
    Text('page2'),
    Text('page3'),
    Text('page4'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 메인 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: '스마트추천',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            label: '컨텐츠리뷰',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: '마이페이지',
          ),
        ],
        selectedItemColor: Color.fromRGBO(78, 67, 187, 1.0),
        unselectedItemColor: Colors.black87,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

