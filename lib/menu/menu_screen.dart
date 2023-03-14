import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:splitbill/menu/profile_update.dart';
import 'package:splitbill/menu/widgets/profile_menu.dart';
import 'package:splitbill/main.dart';
import 'package:splitbill/menu/profile_update.dart';
import 'package:splitbill/menu/widgets/profile_menu.dart';
import '../home.dart';
import '../onboard/onboard_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HomePage()));
            },
            icon: const Icon(LineAwesomeIcons.angle_left),
          ),
          title: const Text("Menu"),
          actions: [
            IconButton(
                onPressed: () {},
                icon:
                    Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                              image: AssetImage("assets/images/man.png"))),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.purple
                        ),
                        child: IconButton(
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const ProfUpdate()));
                          },
                          icon : const Icon(
                            LineAwesomeIcons.alternate_pencil,
                            size: 20
                          ),
                          color: Colors.white,
                        ),
                        
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text("User", style: Theme.of(context).textTheme.titleLarge),
                Text("btgsatcoki@gmail.com",
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: MyElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ProfUpdate()));
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: const Text("Edit Profile"),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),
                ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: (){}),
                ProfileMenuWidget(title: "Connect Wallet", icon: LineAwesomeIcons.wallet, onPress: (){}),
                ProfileMenuWidget(title: "About Developer", icon: LineAwesomeIcons.user, onPress: (){}),
                const Divider(),
                const SizedBox(height: 10),
                ProfileMenuWidget(title: "Update", icon: LineAwesomeIcons.history, onPress: (){}),
                ProfileMenuWidget(title: "Log Out", icon: LineAwesomeIcons.alternate_sign_out, onPress: (){},textColor: Colors.red, endIcon: false,)

              ],
            ),
          ),
        ));
  }
}

// class ProfileMenu {
//   final String title;
//   final IconData icon;
//   final VoidCallback onPress;
//   final bool endIcon;
//   final Color? textColor;

//   ProfileMenu({
//     required this.title,
//     required this.icon,
//     required this.onPress,
//     this.endIcon = true,
//     this.textColor,
//   });
// }

// final List<ProfileMenu> menuData = [
//   ProfileMenu(
//     title: "Settings",
//     icon: LineAwesomeIcons.cog,
//     onPress: () {},
//   ),
//   ProfileMenu(
//     title: "Billing Details",
//     icon: LineAwesomeIcons.wallet,
//     onPress: () {},
//   ),
//   ProfileMenu(
//     title: "User Management",
//     icon: LineAwesomeIcons.info,
//     onPress: () {},
//   ),
//   ProfileMenu(
//     title: "Logout",
//     icon: LineAwesomeIcons.alternate_sign_out,
//     endIcon: false,
//     onPress: () {},
//   ),
// ];

