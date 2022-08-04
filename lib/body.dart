


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uiplantapp/constants.dart';
import 'package:uiplantapp/detailscreen1.dart';
import 'package:uiplantapp/headerwithsearchbar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
              HeaderWidget(size: size),
              titlewithborder(title1: "Recommended",),
              recommendedallcards(),
              titlewithborder(title1: "Featured Plants",),
              FeaturedPlants(),
              const SizedBox(height: KDefaultPadding,)
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedProduct(Image: "assets/1.jpg",press: (){
            print("done");
          },
        ),
          FeaturedProduct(Image: "assets/5.jpg",press: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DetailScreen()));

          },),
          FeaturedProduct(Image: "assets/6.jpg",press: (){},),
          // FeaturedProduct(Image: "assets/myimage.jpg",press: (){},),
        ],
      ),
    );
  }
}

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({
    Key? key, required this.Image, required this.press,
  }) : super(key: key);
  final String Image;
  final Function press;
  
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DetailScreen()));

      },
      child: Container(
        margin: EdgeInsets.only(left: KDefaultPadding, top: KDefaultPadding/2, bottom: KDefaultPadding/2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(Image), fit: BoxFit.cover)
        ),
    
            ),
    );
  }
}

class recommendedallcards extends StatelessWidget {
  const recommendedallcards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedplantCard(country: 'Russia', image: "assets/3.jpg", title: "Monetro",press: (){},price: 260,),
          RecommendedplantCard(country: 'India', image: "assets/2.jpg", title: "Lil Nas X",press: (){},price: 1000,),
          RecommendedplantCard(country: 'Sweden', image: "assets/4.jpg", title: "Daio",press: (){},price: 230,),
          RecommendedplantCard(country: 'Qatar', image: "assets/7.jpg", title: "Daio",press: (){},price: 23000,),
          RecommendedplantCard(country: 'France', image: "assets/8.jpg", title: "Daio",press: (){},price: 230,),
        ],
      ),
    );
  }
}

class RecommendedplantCard extends StatelessWidget {
  const RecommendedplantCard({
    Key? key, required this.title, required this.image, required this.country, required this.press, required this.price,
  }) : super(key: key);
  final String title , image , country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
      margin: EdgeInsets.only(
        left: KDefaultPadding,
        top: KDefaultPadding/2,
        bottom: KDefaultPadding * 2.5,
        ),
      width: size.width * 0.4,
      // height: 300,
      child: Column(children: [
        Image.asset(image,),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DetailScreen()));
          },
          child: Container(
            padding: EdgeInsets.all(
              KDefaultPadding /2
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23)
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
            RichText(
              text:  TextSpan(
                children: [
                  TextSpan(text: title.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
                ),
                  TextSpan(text: "\n$country".toUpperCase(), style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontSize: 12, fontWeight: FontWeight.w500),
                )
        
                ],
                  ),
              ),
          Spacer(),
          Text("${price.toString()} rs", style: TextStyle(color: Theme.of(context).primaryColor.withOpacity(0.9)),)
        
            ]
          ),
              ),
        )
    ]
            ),
          );
  }
}

class titlewithborder extends StatelessWidget {
  const titlewithborder({
    Key? key, required this.title1,
  }) : super(key: key);
  final String title1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Row(
        children: [
          title(text: title1,),
          Spacer(),
          ElevatedButton(onPressed: (){}, child: Text("More"), style: ElevatedButton.styleFrom(shape: StadiumBorder(), backgroundColor: kPrimaryColor),)
        ],
      ),
    );
  }
}

class title extends StatelessWidget {
  const title({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
        ]),
    );
  }
}

