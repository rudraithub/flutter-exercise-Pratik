import 'package:flutter/material.dart';

class custom_btn extends StatelessWidget {
  const custom_btn({super.key, required this.tname, required this.tColor, required this.bgColor, required this.onPressed});
  final String tname;
  final Color tColor;
  final Color bgColor ;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container
      (child: ElevatedButton
      (child: Text(tname,
      style: TextStyle(color: tColor),
      ),
      onPressed: (){
        onPressed();
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text("I Am Visible"),
        //   showCloseIcon: true,
        //   action:SnackBarAction(label: "Done", onPressed: (){}),),);
      },
      style: ElevatedButton.styleFrom(backgroundColor: bgColor),
      )
      )
      );
}
}