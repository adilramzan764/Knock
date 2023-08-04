import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:knock/Canvasser/Canvasser_Home.dart';
import 'package:knock/Coperate/Cooperate_Dashboard.dart';

import '../Political Dashboard/New_Compaigns.dart';
import '../Political Dashboard/Political.dart';
import '../Setting/Set_Screen.dart';

class BottomBarPage extends StatefulWidget {
  int? check;
  BottomBarPage({Key? key,required this.check }) : super(key: key);
  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;
  late List<Widget> _widgetOptions;
  TextEditingController folder = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState(){
    super.initState();
    print(widget.check);
    _widgetOptions = <Widget>[
      widget.check==0?Political():widget.check==1?Canvasser_Home():Cooperate_Dashboard(),
      const Set_Screen(),
    ];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: widget.check!=1?Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          backgroundColor:Colors.white,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return New_Compaings();
                }));
          },
          child: const Icon(Icons.add,color: Color(0xffed7d2b),size: 50,),
        ),
      ):Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffed7d2b),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home, size: 30),
            label: '', // Remove label for spacing
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.settings, size: 28),
            label: '   ', // Add spacing by adjusting the label content
          ),

        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        onTap: _onItemTapped,
      ),
    );
  }
}