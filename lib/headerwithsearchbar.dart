



import 'package:flutter/material.dart';
import 'package:uiplantapp/constants.dart';


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: KDefaultPadding * 2.5),

      // it will cover 20% of our total height
      height: size.height * 0.2,
      // color: Colors.green,
      child: Stack(
        children: [
        Container(
          padding: const EdgeInsets.only(
            left: KDefaultPadding,
            right: KDefaultPadding,
            bottom: 36 + KDefaultPadding,
            ),
          height: size.height * 0.2 - 27,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(36),
              bottomLeft: Radius.circular(36),
            
            )
            ),
            child: Row(children: [
              Text("Hello, Alok!", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),),
              Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/myimage.jpg"),)
              // Image(image: )
            ]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: KDefaultPadding,
                ),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)

                    )
                  ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: TextField(
                      onChanged: (value) {

                      },
                      decoration:const InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: Icon(Icons.search)
                          ),
                    ),
                  ),
                )
                )
      ]),
    );
  }
}