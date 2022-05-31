import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/FormT.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/RiwayatT.dart';
import 'MainPage.dart';
import 'Form.dart';
import 'LandingPage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _title = '';
  final TextCtrl t = Get.put(TextCtrl());

  List<Widget> _widgetOptions = <Widget>[MainPage(), HomePage(), RiwayatT()];

  // initState() {
  //   _title = 'default';
  // }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 173, 246),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xff0073AC),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Produk",
              icon: Icon(Icons.production_quantity_limits),
            ),
            BottomNavigationBarItem(
              label: "Keranjang",
              icon: Icon(Icons.shopping_basket_rounded),
            ),
            // BottomNavigationBarItem(
            //   label: "Keranjang",
            //   icon: Icon(Icons.mail),
            // ),
            // BottomNavigationBarItem(
            //   label: "Jadwal",
            //   icon: Icon(Icons.calendar_today),
            // ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Home';
          }
          break;
        case 1:
          {
            _title = 'Produk';
          }
          break;
        case 2:
          {
            _title = 'Riwayat';
          }
          break;
        // case 3:
        //   {
        //     _title = 'Keranjang';
        //   }
        //   break;
      }
    });
  }
}
