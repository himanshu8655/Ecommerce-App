import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  final tabs=[
    Center(
        child: Text('Home')
    ),
    Center(child: Text('Announcements')),
    Center(child: Text('Notification')),
    Center(child: Text('Meessage')),

  ];

  @override

  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedFontSize: 15,
          selectedIconTheme: IconThemeData(color: Colors.red),
          selectedItemColor: Colors.red,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          currentIndex: _currentIndex,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colors.red,size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.announcement_outlined,color: Colors.red,size: 30),
              label: 'Announcements',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_sharp,color: Colors.red,size: 30),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined,color: Colors.red,size: 30),
              label: 'Meessage',
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Align(alignment: Alignment.topCenter,child: Image.asset("assets/wallpaper.png")),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red[500],
                  ),
                      borderRadius: BorderRadius.circular(20)
                  ),

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
