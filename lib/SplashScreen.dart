import 'package:bookverse/home_screen.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    //_navigatetohome();
  }
_navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>home()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height:100,
                width:100,
                color: Colors.blue,
              ),
              Container(
                padding:const EdgeInsets.fromLTRB(0,40,0,0),
                child: Text(
                  'BOOKVERSE', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        )
    );
  }
}
