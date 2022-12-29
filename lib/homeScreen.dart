import 'package:flutter/material.dart';
import 'package:flutter_day16/secondScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.all_inclusive,size: 30),
          title: Text("Homescreen",style: TextStyle(letterSpacing: 2),),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Next", style: TextStyle(fontSize: 25,letterSpacing: 2,color: Colors.white)),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff3E3636),
      ),
    );
  }
}
