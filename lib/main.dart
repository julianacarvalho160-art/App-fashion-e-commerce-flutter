import 'package:flutter/material.dart';
import 'package:app_fashion_e_commerce/screens/homepage.dart';
import 'package:app_fashion_e_commerce/screens/searchpage.dart';
import 'package:app_fashion_e_commerce/screens/profilepage.dart';
import 'package:app_fashion_e_commerce/screens/messagepage.dart';
import 'package:app_fashion_e_commerce/screens/bookingpage.dart';


void main() {
  runApp(const MyAppStoreFashion());
}

class MyAppStoreFashion extends StatelessWidget {
  const MyAppStoreFashion({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int indiceAtual = 0;

  void trocandoTela(int novaTela) {
    if (novaTela < telas.length) {
      setState(() {
        indiceAtual = novaTela;
      });
    }
  }

  final List<Widget> telas = [
    HomePageFashion(), 
     MySearchPage(),
    const MyBookingPage(),
    const MyMessagesPage(),
    const MyProfilePage(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 30.0,

        currentIndex: indiceAtual,
        onTap: trocandoTela,
        items: const [
         
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: telas[indiceAtual],
    );
  }
}
