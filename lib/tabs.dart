import 'package:flutter/material.dart';
import './pages/pages.dart';
class PageOption {
  String title;
  Widget body;
  PageOption(this.title, this.body) {  
  }
}

class NavigationTabs extends StatefulWidget {
  _NavigationTabsState createState() => _NavigationTabsState();
}

class _NavigationTabsState extends State<NavigationTabs>{

  int _selectedPage = 0;
  String _appBarTitle = '';
  final _pageOptions = <PageOption>[
    PageOption('Calculator', CalculatorPage()),
    PageOption ('Page',Center(child: Text('Page')))
  ];

  

  @override
  Widget build(BuildContext context) {
 

    _appBarTitle = _pageOptions[_selectedPage].title;
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: _pageOptions[_selectedPage].body,
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
              _appBarTitle = _pageOptions[_selectedPage].title;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('Calculator')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              title: Text('Page')
            )
          ],
        ),
      )
    );
  }
}