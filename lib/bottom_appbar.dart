import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Bottom_AppBar extends StatelessWidget {
  const Bottom_AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize:35,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'home'),
        BottomNavigationBarItem(icon: Icon(
        FontAwesomeIcons.plusSquare,size: 30,),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded,),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,),label: 'home'),

      ],
      ),
    );
  }
}
