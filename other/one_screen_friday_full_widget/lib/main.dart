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
    DateTime? dt;
  
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
        child: SingleChildScrollView(
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
          
            
          
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
              child:Column(
                children: [
                  TextButton(style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),fixedSize: Size(400, 50)),onPressed: ()async{
                  DateTime? datet = await showDatePicker(helpText: "date of birth",context: (context),firstDate: DateTime(2004), lastDate: DateTime.now(),fieldHintText: "Date of Birth",fieldLabelText: "date of birth");
                    setState(() {
                      dt=datet;
                    });
            }, child: Text("date",style: TextStyle(color: Colors.grey),
            ),
            ),
                ],
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
                DropdownMenu(
                  dropdownMenuEntries: [
                    DropdownMenuEntry
                    (value: "", label: "male"),
                    DropdownMenuEntry(value: "", label: "Female"),
                    ],width: 160,hintText: "Gender",),
                SizedBox(width: 10,),
                Container(
                  width: 160,
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

            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              maxLength: 50,

              decoration: InputDecoration(
              // suffix: Icon(Icons.remove_red_eye_outlined,color: Colors.blue.shade900,),
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

              labelText: "Description",
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}