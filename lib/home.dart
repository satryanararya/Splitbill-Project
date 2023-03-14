import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:splitbill/main.dart';

import 'inputPage/input.dart';
import 'mainPage/active.dart';
import 'mainPage/add.dart';
import 'mainPage/history.dart';
import 'menu/menu_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    ActivePage(),
    AddPage(),
    HistoryPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget CurrentScreen = ActivePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => const MenuScreen()));
              },
            icon: Icon(Icons.menu),
          ),
        ],

        
      ),
      body: PageStorage(
        child: CurrentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.add),
          decoration: BoxDecoration(
            gradient: MyColor.gradient1,
            shape: BoxShape.circle
          ),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder:             
            (context) => InputPage()
          );
          Navigator.push(context, route);

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        CurrentScreen = ActivePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(           
                            Icons.event_note,
                            color: currentTab == 0 ? 
                              MyColor.color2 : Colors.grey,
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                              color: currentTab == 0 ?
                              MyColor.color2 : Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          CurrentScreen = HistoryPage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(           
                              Icons.history,
                              color: currentTab == 1 ? 
                                MyColor.color2 : Colors.grey,
                            ),
                            Text(
                              'History',
                              style: TextStyle(
                                color: currentTab == 1 ?
                                MyColor.color2 : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                ],
              ),
            ],
          ),
        ),
      ),

      // endDrawer: Drawer(
      //   backgroundColor: Colors.amber,
      //   child: ListView(
      //     padding: const EdgeInsets.all(0),
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //         ), //BoxDecoration
      //         child: UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(color: Colors.green),
      //           accountName: Text(
      //             "Abhishek Mishra",
      //             style: TextStyle(fontSize: 18),
      //           ),
      //           accountEmail: Text("abhishekm977@gmail.com"),
      //           currentAccountPictureSize: Size.square(50),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundColor: Color.fromARGB(255, 165, 255, 137),
      //             child: Text(
      //               "A",
      //               style: TextStyle(fontSize: 30.0, color: Colors.blue),
      //             ), //Text
      //           ), //circleAvatar
      //         ), //UserAccountDrawerHeader
      //       ), //DrawerHeader
      //       ListTile(
      //         leading: const Icon(Icons.person),
      //         title: const Text(' My Profile '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.book),
      //         title: const Text(' My Course '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.workspace_premium),
      //         title: const Text(' Go Premium '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.video_label),
      //         title: const Text(' Saved Videos '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.edit),
      //         title: const Text(' Edit Profile '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.logout),
      //         title: const Text('LogOut'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ), 
    );
  }
}
