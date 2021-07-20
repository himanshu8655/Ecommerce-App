import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  func(int currentIndex, BuildContext context){
    print(currentIndex);
    if(_currentIndex==0){
      return  SingleChildScrollView(
        child: Stack(
          children: [


            Align(alignment: Alignment.topCenter,child: Image.asset("assets/wallpaper.png")),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),

                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 35, 0, 0),
                child: Image.asset("assets/person.png", height: 60.0, width: 60.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(78,45,10,10),
              child: Text("Name Surname",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(78,70,10,10),
              child: Text("Committee Member",
                style: TextStyle(color: Colors.white,fontSize: 14),),
            ),
          ],
        ),
      );
    }
    else if(_currentIndex==1){
      Center(child: Text('a'));
    }
    else if(_currentIndex==2){
      Center(child: Text('a'));
    }
    else if(_currentIndex==3){
      Center(child: Text('a'));
    }
  }


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
        body: func(_currentIndex,context),

      ),
    );
  }
}
