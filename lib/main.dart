import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("user Tapping");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.deepPurple[200],
            //APPBAR

            // appBar: AppBar(
            //   title: const Align(
            //     alignment: Alignment.center,
            //     child: Text("My App"),
            //   ),
            //   // centerTitle: true,
            //   backgroundColor: Colors.deepPurple,
            //   elevation: 0,
            //   leading: const Icon(Icons.menu),
            //   actions: [IconButton(
            //     onPressed: () {},
            //     icon: const Icon(Icons.logout),
            //   )]
            // ),

            // CENTER AND CONTAINERS
            // body: Center(
            //   child: Container(
            //     width: 300,
            //     height: 300,
            //     decoration: BoxDecoration(
            //       color: Colors.deepPurple,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     padding: const EdgeInsets.all(25),
            //     child: const Icon(
            //       Icons.heart_broken,
            //       color: Colors.white,
            //       size: 64,
            //     )
            //   )
            // )

            // COLUMN AND ROW AND LISTVIEW AND GRIDVIEW
            body: Center(
              child: GestureDetector(
                onTap: userTapped,
                child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue[500],
                    child: Center(
                        child: Text("Tap me!",
                            style: TextStyle(
                                color: Colors.deepPurple[50], fontSize: 25)))),
              ),
            )
            // STACK
            // Stack(
            //   alignment: Alignment.center,
            //   children: [
            //     Container(
            //       width: 300,
            //       height: 300,
            //       color: Colors.blue[700],
            //     ),

            //     Container(
            //       width: 200,
            //       height: 200,
            //       color: Colors.blue[500],
            //     ),

            //     Container(
            //       width: 100,
            //       height: 100,
            //       color: Colors.blue[300],
            //     )
            //   ],
            // )
            // GridView.builder(
            //   itemCount: 64,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 2, mainAxisSpacing: 2),
            //   itemBuilder: (context, index) => Container(
            //     color: Colors.blueAccent[400],
            //     // margin: const EdgeInsets.all(2)
            //   )
            // )
            // LIST VIEW BUILDER
            // ListView.builder(
            //     // reverse: true,
            //     itemCount: names.length,
            //     itemBuilder: (context, index) => Container(
            //       alignment: Alignment.center,
            //       height: 300,
            //       color: Colors
            //           .blue[int.parse(index == 0 ? '900' : '${index}00')],
            //       child: Text(names[index],
            //           style:
            //               TextStyle(color: Colors.grey[900], fontSize: 20)),
            //     )

            // ListTile(
            //   title: Text("I am title ${index.toString()}"),
            //   textColor: Colors.blue[700],
            // ),
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,// for col or rows only
            // crossAxisAlignment: CrossAxisAlignment.start,// for col or row only
            // scrollDirection: Axis.horizontal,// for ListView only
            // children: [
            //   Container(
            //     alignment: Alignment.center,
            //     width: 350,
            //     color: Colors.blue[300],
            //     child: const Text("Hello world"),
            //   ),

            //   Container(
            //     width: 350,
            //     color: Colors.blue[500],
            //   ),

            //   Container(
            //     width: 350,
            //     color: Colors.blue[700]
            //   ),

            //   // Expanded(
            //   //   flex: 3,
            //   //   child: Container(
            //   //     color: Colors.blue[700],
            //   //   ),
            //   // ),
            // ]
            ));
  }
}
