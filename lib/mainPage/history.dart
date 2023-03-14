import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../main.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20, 
                    right: 20, 
                    top: 10, 
                    bottom: 10,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: MyColor.gradient1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ALFAMART',
                        style: 
                          TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial',
                          ),
                      ),
                      const Divider(
                        height: 5,
                      ),
                      Text(
                        DateTime.now().toString(),
                        style: 
                          const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Arial',
                          ),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.white,
                      ),
                      const Text(
                        '4 items - 3 persons',
                        style: 
                          TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Arial',
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20, 
                    right: 20, 
                    top: 10, 
                    bottom: 10,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: MyColor.gradient1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'WISPER',
                        style: 
                          TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial',
                          ),
                      ),
                      const Divider(
                        height: 5,
                      ),
                      Text(
                        DateTime.now().toString(),
                        style: 
                          const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Arial',
                          ),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.white,
                      ),
                      const Text(
                        '12 items - 6 persons',
                        style: 
                          TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Arial',
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        // children:<Widget> [
        //   Container(
        //     padding: EdgeInsets.only(
        //       left: 20, 
        //       right: 20, 
        //       top: 10, 
        //       bottom: 10,
        //     ),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           'INDOMARET',
        //           style: 
        //             TextStyle(
        //               fontSize: 16,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //               fontFamily: 'Arial',
        //             ),
        //         ),
        //         Divider(
        //           height: 5,
        //         ),
        //         Text(
        //           DateTime.now().toString(),
        //           style: 
        //             TextStyle(
        //               fontSize: 12,
        //               color: Colors.white,
        //               fontFamily: 'Arial',
        //             ),
        //         ),
        //         Divider(
        //           height: 20,
        //           color: Colors.white,
        //         ),
        //         Text(
        //           '4 items - 3 persons',
        //           style: 
        //             TextStyle(
        //               fontSize: 12,
        //               color: Colors.white,
        //               fontFamily: 'Arial',
        //             ),
        //         ),
        //       ],
        //     ),
        //     margin: EdgeInsets.all(20),
        //     height: 100,
        //     decoration: BoxDecoration(
        //       gradient: MyColor.gradient1,
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //   ),
        //   Container(
        //     margin: EdgeInsets.all(20),
        //     height: 100,
        //     decoration: BoxDecoration(
        //       gradient: MyColor.gradient1,
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}