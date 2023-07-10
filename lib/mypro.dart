import 'package:flutter/material.dart';

class Mypro extends StatefulWidget {
  const Mypro({Key? key}) : super(key: key);

  @override
  State<Mypro> createState() => _MyproState();
}

class _MyproState extends State<Mypro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",
          style: TextStyle(
            color: Colors.green,
            background: null,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),

      ),
    );
  }
}
