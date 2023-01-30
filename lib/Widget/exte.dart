// import 'package:flutter/material.dart';
// // stores ExpansionPanel state information
// class Item {
//   Item({
//     required this.expandedValue,
//     required this.headerValue,
//     this.isExpanded = false,
//   });
//
//   String expandedValue;
//   String headerValue;
//   bool isExpanded;
// }
//
// List<Item> generateItems(int numberOfItems) {
//   return List<Item>.generate(numberOfItems, (int index) {
//     return Item(
//       headerValue: 'Panel $index',
//       expandedValue: 'This is item number $index',
//     );
//   });
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   final List<Item> _data = generateItems(8);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         child: _buildPanel(),
//       ),
//     );
//   }
//
//   Widget _buildPanel() {
//     return ExpansionPanelList(
//       expansionCallback: (int index, bool isExpanded) {
//         setState(() {
//           _data[index].isExpanded = !isExpanded;
//         });
//       },
//       children: _data.map<ExpansionPanel>((Item item) {
//         return ExpansionPanel(
//           headerBuilder: (BuildContext context, bool isExpanded) {
//             return ListTile(
//               title: Text(item.headerValue),
//             );
//           },
//           body: ListTile(
//               title: Text(item.expandedValue),
//               subtitle:
//               const Text('To delete this panel, tap the trash can icon'),
//               trailing: const Icon(Icons.delete),
//               onTap: () {
//                 setState(() {
//                   _data.removeWhere((Item currentItem) => item == currentItem);
//                 });
//               }),
//           isExpanded: item.isExpanded,
//         );
//       }).toList(),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myroom extends StatefulWidget {
  const Myroom({Key? key}) : super(key: key);

  @override
  State<Myroom> createState() => _MyroomState();
}

class _MyroomState extends State<Myroom> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: h / 1.4,
                width: w / 1,
                decoration: BoxDecoration(
                  color: Color(0xfffdfdff),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Column(
                  children: [
                    Card(
                      child: Container(
                        height: h / 13,
                        width: w / 1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Room Control',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h / 9,
                            width: w / 4,
                            decoration: BoxDecoration( boxShadow: [
                              BoxShadow(
                                  color: Color(0xffbdc2ff),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(4.5, 20))
                            ],
                                borderRadius: BorderRadius.circular(100.0),
                                gradient: LinearGradient(end: Alignment.topLeft,
                                    // begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffd21ba7),
                                      Color(0xffe98f25),
                                    ])),
                            child: Icon(
                              Icons.vpn_key_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            height: h / 9,
                            width: w / 4,
                            decoration: BoxDecoration( boxShadow: [
                              BoxShadow(
                                  color: Color(0xffbdc2ff),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(4.5, 20))
                            ],
                                borderRadius: BorderRadius.circular(100.0),
                                gradient: LinearGradient(end: Alignment.topLeft,
                                    // begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff653a8b),
                                      Color(0xffad62ef),
                                    ])),
                            child: Icon(
                              Icons.settings_remote_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h / 9,
                            width: w / 4,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffbdc2ff),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(4.5, 20))
                                ],
                                borderRadius: BorderRadius.circular(100.0),
                                gradient: LinearGradient(end: Alignment.topLeft,
                                    // begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff0b916a),
                                      Color(0xff10b585),
                                    ])),
                            child: Icon(
                              Icons.electric_bolt,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            height: h / 9,
                            width: w / 4,
                            decoration: BoxDecoration( boxShadow: [
                              BoxShadow(
                                  color: Color(0xffbdc2ff),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(4.5, 20))
                            ],
                                borderRadius: BorderRadius.circular(100.0),
                                gradient: LinearGradient(end: Alignment.topLeft,
                                    // begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0xfff6b80f),
                                      Color(0xffffd76b),
                                    ])),
                            child: Icon(
                              Icons.map_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h / 9,
                            width: w / 4,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffbdc2ff),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(4.5, 20))
                                ],
                                borderRadius: BorderRadius.circular(100.0),
                                gradient: LinearGradient(end: Alignment.topLeft,
                                    // begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff20486d),
                                      Color(0xff2a6092),
                                    ])),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Container(
                            height: h / 9,
                            width: w / 4,
                            decoration: BoxDecoration( boxShadow: [
                              BoxShadow(
                                  color: Color(0xffbdc2ff),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(4.5, 20))
                            ],
                                borderRadius: BorderRadius.circular(100.0),
                                gradient: LinearGradient(end: Alignment.topLeft,
                                    // begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff212635),
                                      Color(0xff666c8b),
                                    ])),
                            child: Icon(
                              Icons.exit_to_app,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
