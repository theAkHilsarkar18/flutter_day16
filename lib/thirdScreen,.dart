import 'package:flutter/material.dart';
import 'package:flutter_day16/homeScreen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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

              //SizedBox(height: 20,),

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
