






import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uiplantapp/constants.dart';




class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: detailBody());
  }
}


class detailBody extends StatelessWidget {
  const detailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.80,
            child: Row(
              children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: KDefaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                          onPressed: (){
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios_new)
                        )
                      ),
                    // Spacer(),
                    IconCard(Icon1: Icons.sunny,),
                    IconCard(Icon1: Icons.home_filled,),
                    IconCard(Icon1: Icons.water_drop_rounded,),
                    IconCard(Icon1: Icons.sanitizer,),
                    ],
                  ),
                )
              ),
              // SizedBox(height: 10,),
    
    
              Container(  
                height: size.height * 0.8,
                width: size.width * 0.74,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.2)
                      )
                    ],
                    image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/3.jpg"),
                    fit: BoxFit.cover
                    )
                  )
              ),

    
    
    
              
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
            child: Row(
              children: [
              RichText(text: TextSpan(children: [
                TextSpan(text: "Monetro", style: Theme.of(context).textTheme.headline4!.copyWith(color: kTextColor,fontWeight: FontWeight.bold)),
                TextSpan(text: "\nRussia", style: TextStyle(color: kPrimaryColor, fontSize: 20)),
              ])),
              Spacer(),
              Text("440 Rs", style: TextStyle(color: kPrimaryColor, fontSize: 30),)
    
            ],),
          ),
          SizedBox(height: KDefaultPadding,),
          Row(children: [
            SizedBox(width: size.width /2 ,
            height: 84,
            child: Container(
              height: 84,
              width: size.width/2,
              decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.9),borderRadius: BorderRadius.only(topRight: Radius.circular(16))),
              // style: ElevatedButton.styleFrom(

              // shape: StadiumBorder(side: BorderSide.none,)
              // ), onPressed: (){},
              child: Center(child: Text("Buy Now", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: Colors.white),)),),
            ),
            Expanded(
            child: 
            
            TextButton(  
              style: ElevatedButton.styleFrom(

              // shape: StadiumBorder(side: BorderSide.none,)
              ), onPressed: (){},child: Text("Description", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),),),
            )
          ],)
        ]
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.Icon1,
  }) : super(key: key);
  final IconData Icon1;


  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
      padding: EdgeInsets.all(KDefaultPadding),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow:const [
          BoxShadow(
            offset: Offset(0,10),
          blurRadius: 20,
          color: Colors.green
          )
        ]
      ),
        child: Center(child: Icon(Icon1,size: 27,color: kPrimaryColor,))
        
      );
  }
}