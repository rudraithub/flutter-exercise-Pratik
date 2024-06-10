import 'package:flutter/material.dart';

class com_btn extends StatelessWidget {
  

  const com_btn({super.key, required this.tname, required this.tcol, required this.callback, required this.fweight, required this.shadowcol, required this.backcol});
  final String tname;
  final Color tcol,shadowcol,backcol;
  final VoidCallback callback;
  final FontWeight fweight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
        callback();
      },
       child: Text(tname,style: TextStyle(color: tcol,fontWeight:fweight,decoration:TextDecoration.underline),
      ),
      style: TextButton.styleFrom(
        shadowColor: shadowcol,
        backgroundColor:backcol,
        side: BorderSide(style: BorderStyle.solid,color: Color.fromARGB(255, 0, 0, 0),width: 1)),
      ),
    );
  }
}


class com_op extends StatelessWidget {
  const com_op({super.key, required this.fabname, required this.fabcol, required this.valret});
  final String fabname;
  final Color fabcol;
  final VoidCallback valret;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(onPressed: (){
        valret();
      },
      child: Text(fabname,style: TextStyle(color: fabcol),)),
    );
  }
}

class demo_common extends StatelessWidget {
  const demo_common({super.key, required this.obname, required this.obcol, required this.obbgcol, required this.praitk});
  final String obname;
  final Color obcol,obbgcol;
  final VoidCallback praitk;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(onPressed: (){

      }, child: Text(obname,style: TextStyle(color:obcol),),
      style: OutlinedButton.styleFrom(backgroundColor: obbgcol,),
      ),
    );
  }
}

class action_common extends StatelessWidget {
  const action_common({super.key, required this.ibbgcol, required this.ibforcol, required this.iconnbtn});
  
  final Color ibbgcol,ibforcol;
  final VoidCallback iconnbtn;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(onPressed: (){
        iconnbtn();
      }, icon: Icon(Icons.accessible_forward_sharp,size: 40,),
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(ibbgcol),foregroundColor: WidgetStatePropertyAll(ibforcol),
      ),
      ),
    );
  }
}


// child: FloatingActionButton(onPressed: (){
      //   actionbtn();
      // },
      // child: Text(abtname,style: TextStyle(color: abcol),),
      // backgroundColor: abbgcol,
      // ),