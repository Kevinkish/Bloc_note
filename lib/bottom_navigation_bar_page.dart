import 'package:bloc_note/about_page.dart';
import 'package:bloc_note/home.dart';
import 'package:bloc_note/modification_page.dart';
import 'package:flutter/material.dart';

class BottomAppbarPage extends StatefulWidget {
  const BottomAppbarPage({super.key});

  @override
  State<BottomAppbarPage> createState() => _BottomAppbarPageState();
}

List<Widget> pages = [const HomePage(), const AboutPage()];

class _BottomAppbarPageState extends State<BottomAppbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //FLOATING ACTION BUTTON

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ModificationPage(),
              ));
        },
        backgroundColor: Colors.black87,
        elevation: 10,
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(width: 2, style: BorderStyle.solid),
        ),
        child: const Icon(Icons.add_rounded),
      ),

      //BOTTOM APPBAR

      bottomNavigationBar: BottomAppBar(
        // notchMargin: 5,
        // shape: CircularNotchedRectangle(),
        color: Colors.white,
        elevation: 10,

        //BOTTOM NAVIGATION BAR

        child: NavigationBar(
          height: 65,
          backgroundColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          animationDuration: const Duration(seconds: 1),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey,
                size: 25,
              ),
              label: "Home",
              selectedIcon: Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 30,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_2_rounded,
                color: Colors.grey,
                size: 25,
              ),
              label: "About",
              selectedIcon: Icon(
                Icons.person_2_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currrentpage = index;
            });
          },
          selectedIndex: currrentpage,
        ),
      ),
      body: pages[currrentpage],
    );
  }
}
