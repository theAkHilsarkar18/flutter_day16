import 'package:flutter/material.dart';
import 'package:flutter_day16/homeScreen.dart';
import 'package:flutter_day16/thirdScreen,.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffD72323),
          leading: Icon(Icons.all_inclusive,size: 30),
          title: Text("Second Screen",style: TextStyle(letterSpacing: 2),),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ThirdScreen(),));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0xffD72323),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Next", style: TextStyle(fontSize: 25,letterSpacing: 2,color: Colors.white)),
                ),
              ),

              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0xffD72323),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Back", style: TextStyle(fontSize: 25,letterSpacing: 2,color: Colors.white)),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xffF5EDED),
      ),
    );
  }
}
