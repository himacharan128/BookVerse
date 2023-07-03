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
    _navigatetohome();
  }
_navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Home()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height:110,
                width:110,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(2), // Adjust the padding as needed
                  child: Image.asset('assets/images/LOGO.jpg'),
                ),
              ),
              Container(
                padding:const EdgeInsets.fromLTRB(0,10,0,0),
                child: Text(
                  'BOOKVERSE', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        )
    );
  }
}
