import 'package:flutter/material.dart';
import 'package:flutter_application_1_custom_widget_textfields/com_tf.dart';

void main()
{
  runApp(myap());
}

class myap extends StatelessWidget {
  const myap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demooo(),
    );
  }
}

class demooo extends StatefulWidget {
  const demooo({super.key});

  @override
  State<demooo> createState() => _demoooState();
}

class _demoooState extends State<demooo> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: txtFeild(keyboardEvent:TextInputType.emailAddress, iconData: Icons.access_time_filled, hText: "e-mail", labelText: "Enter email", controller: controller)
    );
  }
}