



import 'package:flutter/material.dart';
import 'package:uiplantapp/body.dart';
import 'package:uiplantapp/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: KDefaultPadding * 2,
          right: KDefaultPadding * 2,
          // bottom: KDefaultPadding
        ),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.30),

  
    
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: (){},icon: Icon(Icons.home), color: kPrimaryColor,iconSize: 30,),
            IconButton(onPressed: (){},icon: Icon(Icons.favorite), color: kPrimaryColor,iconSize: 30,),
            IconButton(onPressed: (){},icon: Icon(Icons.home), color: kPrimaryColor,iconSize: 30,),
        ],),
      ),
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: Icon(Icons.menu),
    );
  }
}