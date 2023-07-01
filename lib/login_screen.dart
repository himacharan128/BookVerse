import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left:30,right: 30),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              SizedBox(
                height: 45,
                width:  250 ,
                child:ElevatedButton(
                  onPressed:(){
                    Navigator.pushNamed(context,"home");
                  },
                  child: Text('LOGIN'),
                  style: ElevatedButton.styleFrom( backgroundColor: Colors.blue ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero)),
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}

