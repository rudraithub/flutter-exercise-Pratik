import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 2, 63, 4),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              child: Text(
                "Chats",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.circle_outlined,
                color: Colors.white,
              ),
              child: Text(
                "Status",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.call_outlined,
                color: Colors.white,
              ),
              child: Text(
                "Call",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Tab(
            child: Column(
              children: [
                Text("Screen 1"),
                /*ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) => Column(
                            mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.open_in_browser),
                                    title: Text("Open Browser"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.delete),
                                    title: Text("Delete"),
                                  ),
                                ],
                              ));
                    },
                    child: Text("Click me!"))*/
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [Text("Screen 2")],
            ),
          ),
          Tab(
            child: Column(
              children: [Text("Screen 3")],
            ),
          ),
        ]),
      ),
    );
  }
}

