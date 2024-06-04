// import 'package:flutter/material.dart';

// class tiger extends StatelessWidget {
//   const tiger({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Second page is Here"),
//       ),
//       body: Center(
//         child: TextButton(onPressed: (){
//           Navigator.pop(context);
//         }, child: Text("Click to navigate in first page")),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class navigatepage extends StatelessWidget {
  const navigatepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAge 2"),
      ),
      body: TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text("Click here"),),
    );
  }
}