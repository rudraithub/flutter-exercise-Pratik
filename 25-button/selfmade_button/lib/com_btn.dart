
import 'package:flutter/material.dart';

class btn_common extends StatelessWidget {
  const btn_common({super.key, required this.btn1, required this.fontcol, required this.splashcol, required this.fontsiz, required this.hovecol, required this.duration, required this.val, required this.gv, required this.name, required this.oc, required this.nam, required this.vall, required this.onChange});
  final String btn1;
  final Color fontcol,splashcol,hovecol;
  final double fontsiz;
  final int duration;
  
  final String val,gv,name;
  final ValueChanged oc;

  final String nam;
  final bool vall;
  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(value: val, groupValue: gv, onChanged: oc,title: Text(name),),
        CheckboxListTile(value: vall, onChanged: onChange,title: Text(nam),),
        Center(
          child: InkWell(
            onTap: () {
              print("event fired");
            },
            onDoubleTap: () {
              print("Event fired Twice");
            },
            splashColor: splashcol,
            borderRadius: BorderRadius.circular(120),
            hoverColor: hovecol,
            hoverDuration: Duration(seconds: duration),
            child:Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54,width: 1,),
                borderRadius: BorderRadius.circular(120),
              ),
              child: Center(
                child: Text(btn1,style: TextStyle(color: fontcol,fontSize: fontsiz),),
              ),
            ),
          ),
        ),
      ],
    );
  }
}