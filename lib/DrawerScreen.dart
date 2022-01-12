import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';
class DrawerScreen extends StatefulWidget {


  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50,left: 10),
      color: primarycolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/pic.jpg'),
                maxRadius: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Santhosh D',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('Active Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItem.map((element) => Row(
                children: [
                  Icon(element['Icon'],color: Colors.white, size: 20,),
                  SizedBox(width: 10,height: 60,),
                  Text(element['Title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              )).toList(),

          ),
          Row(

            children: [
              IconButton(icon: Icon(Icons.settings,color: Colors.white,)),
              Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              Text('Log Out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}
