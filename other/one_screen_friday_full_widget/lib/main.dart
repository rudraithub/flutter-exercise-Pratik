import 'package:flutter/material.dart';
import 'package:one_screen_friday_full_widget/com_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          // Icon(Icons.abc),
          Row(
            children: [
              Icon(Icons.search_rounded),
              SizedBox(width: 20,),
              Icon(Icons.more_horiz_rounded),
              SizedBox(width: 10,),
            ],
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 25),
          width: 330,
          child: Column(
            children: [
              com_textf(kt: TextInputType.name, lablet: "First Name"),
              SizedBox(height: 20,),
              com_textf(kt: TextInputType.name, lablet: "*Last Name",),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,

                decoration: InputDecoration(
                suffix: Icon(Icons.remove_red_eye_outlined,color: const Color.fromARGB(255, 3, 92, 225),),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
                   ),
                   
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              
              labelText: "*Password",
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 20,),
          /*Container(
            height: 100,
            width: double.infinity,
            // width: 200,
            // child: DatePickerDialog(firstDate: DateTime(2004), lastDate: DateTime(2024),),
          ),
              
              
              /*TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,

                decoration: InputDecoration(
                // suffix: Icon(Icons.remove_red_eye_outlined,color: const Color.fromARGB(255, 3, 92, 225),),
                
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
                   ),
                   
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              
              labelText: "*Password",
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),*/*/

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownMenu(dropdownMenuEntries: [DropdownMenuEntry(value: "", label: "male"),DropdownMenuEntry(value: "", label: "Female")]),
              SizedBox(width: 10,),
              Container(
                width: 150,
                child: com_textf(kt: TextInputType.number, lablet: "Phone number"),
              ),
            ],
          ),

          SizedBox(height: 20,),

          // com_textf(kt: TextInputType.emailAddress, lablet: "Email"),

          TextField(
                obscureText: false,
                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(
                  // helperMaxLines: 5,
                // suffix: Icon(Icons.remove_red_eye_outlined,color: const Color.fromARGB(255, 3, 92, 225),),
                suffixIcon: Icon(Icons.email,color: Colors.grey,),
                
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
                   ),
                   
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              
              labelText: "Email",
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}