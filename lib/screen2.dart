import 'package:flutter/material.dart';
import 'package:petapp/configuration.dart';
class Screen2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){
                    Navigator.pop(context);
                  },),
                  IconButton(icon: Icon(Icons.share,color: Colors.white,),onPressed: (){

                  },),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(

              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 1,
                  child: Image.asset('images/pet-cat2.png')),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: ListShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,

                    child: Icon(Icons.favorite_border,color: Colors.white,),
                    decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,

                      child: Center(child: Text('ADOPTION',style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(20)
                      ),),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                topRight: Radius.circular(40)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
