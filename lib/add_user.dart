import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String ? gender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add user"),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 6,),
              Align(alignment: Alignment.centerLeft,
                child: Text("Name",style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Full Name",
                  ),
                ),
              ),
              SizedBox(height: 6,),
              Align(alignment: Alignment.centerLeft,
                child: Text("Email ID",style: TextStyle(
                  color: Colors.grey
                ),),
              ),

              // Row(
              //   children: [
              //     RadioListTile(
              //       title: Text("male"),
              //         value: "male",
              //         groupValue: "male", onChanged: (value){
              //         setState(() {
              //         });
              //     }),
              //   ],
              // ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Tuc",
                  ),
                ),

              ),
          SizedBox(height: 6,),
          Column(
            children: [
              Align(alignment: Alignment.centerLeft,
                  child: Text("status",style: TextStyle(color: Colors.grey),)),
              RadioListTile(
                title: Text("Male"),
                value: "male",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender= value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Female"),
                value: "female",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Active/reactive"
                  ),

                ),

              ),
              SizedBox(height: 6,),
              ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                  padding: EdgeInsets.all(30)
              ),
                  onPressed: () => print('pressed'),
                  child: Text('Submit')),
            ],
          ),
    ]),
      ),
    ),);
  }
}
