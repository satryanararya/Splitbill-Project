import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:splitbill/menu/menu_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:splitbill/onboard/onboard_screen.dart';
import 'menu_screen.dart';

class ProfUpdate extends StatelessWidget {
  const ProfUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MenuScreen()));
              },
              icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            "Edit Profile",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.only(top: 15),
          child: Column(children: [
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
                        color: Colors.purple),
                    child: const Icon(
                      LineAwesomeIcons.camera,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height:30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Full Name"),
                        prefixIcon: Icon(Icons.person_outline_rounded),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        prefixIconColor: Colors.purple,
                        floatingLabelStyle: TextStyle(color: Colors.purple),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)
                        )
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("E-Mail"),
                        prefixIcon: Icon(Icons.email_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        prefixIconColor: Colors.purple,
                        floatingLabelStyle: TextStyle(color: Colors.purple),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration:  InputDecoration(
                        label: Text("Phone"),
                        prefixIcon: Icon(Icons.phone_in_talk_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)

                        ),
                        prefixIconColor: Colors.purple,
                        floatingLabelStyle: TextStyle(color: Colors.purple),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(100)

                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: double.infinity,
                      child: MyElevatedButton(onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const MenuScreen()));
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: const Text("Submit!")
                      )
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: "Joined",
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                text: "  31 October 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ))
                            ]
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 203, 203),
                            foregroundColor: Colors.red,
                            shape: const StadiumBorder(),
                            side: BorderSide.none,
                            shadowColor: Colors.transparent),
                          child: const Text("Delete"))
                      ],)
              ],)),
            )
          ]),
        )));
  }
}