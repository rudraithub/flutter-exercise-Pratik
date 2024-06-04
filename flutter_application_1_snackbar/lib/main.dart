import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDilog Box & Snack Bar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("Submit"),
                              content: Text("Do you want to submit?"),
                              actions: [
                                TextButton(
                                    onPressed: () {}, child: Text("Yes")),
                                TextButton(
                                    onPressed: () {
                                      // Navigator.pop(context, "No");
                                    },
                                    child: Text("No")),
                              ],
                            ));
                  },
                  child: Text("AlertDilog Box")),
SizedBox(height: 10,),
              //snack bar
              TextButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text("I am View"),
                      action: SnackBarAction(label: "Done", onPressed: () {}),
                      duration: Duration(minutes: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text("Snack bar")),
            ],
          ),
        ),
      ),
    );
  }
}
