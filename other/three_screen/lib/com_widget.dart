import 'package:flutter/material.dart';

class com_btn extends StatelessWidget {
  const com_btn({super.key, required this.ontap, required this.btnname, required this.textcol, required this.backcol});
  final VoidCallback ontap;
  final String btnname;
  final Color backcol,textcol;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        child: InkWell(
          onTap: ontap,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backcol,
              border: Border.all(color: Colors.black,),
            ),
            child: Center(child: Text(btnname,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color:textcol,),)),
          ),
        ),
      ),
    );
  }
}

class com_text extends StatelessWidget {
  const com_text({super.key, required this.onpress, required this.name});
  final VoidCallback onpress;
  final String name;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress, child: Text(name,style: TextStyle(
        color: Colors.lightBlueAccent,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),),
      );
  }
}


class com_wid_textfield extends StatelessWidget {
  const com_wid_textfield({super.key, required this.keytype, required this.hinttxt, required this.borderrad, required this.obskert, required this.validator});
  final TextInputType keytype;
  final String hinttxt;
  final BorderRadius borderrad;
  final bool obskert;
  final FormFieldValidator validator;
  // final Color fillcol;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            TextFormField(
              validator: validator,
              keyboardType:keytype ,
              obscureText: obskert,
              decoration: InputDecoration(
                hintText: hinttxt,
                fillColor: Color.fromARGB(255, 236, 205, 183),
                focusedBorder: OutlineInputBorder(
                  borderRadius: borderrad,
                  borderSide: BorderSide(color: Color.fromARGB(255, 179, 138, 173)),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: borderrad,
                  borderSide: BorderSide(color: Color.fromARGB(255, 156, 99, 94))),
                ),
                ),
          ],
        ),
      ),
    );
  }
}


class com_wid_btn extends StatelessWidget {
  const com_wid_btn({super.key, required this.textcol, required this.btnname, required this.fontweigt});
  final Color textcol;
  final String btnname;
  final FontWeight fontweigt;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              
            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),child: Text(btnname,style: TextStyle(color:textcol,fontWeight: fontweigt),
            ),
            ),
          ],
        ),
      ),
    );
  }
}


class imagex extends StatelessWidget {
  const imagex({super.key, required this.newimg, required this.height, required this.width});
  final String newimg;
  final double height,width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(

            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: const Color.fromARGB(255, 196, 2, 2).withOpacity(5.5),
            //       spreadRadius: 5,
            //       blurRadius: 7,
            //       offset: Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            // ),

            height:60,
            width: 90,
            alignment: Alignment.center,
            child: Image.network(newimg,fit: BoxFit.cover,height: height,width: width,),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}