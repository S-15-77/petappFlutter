import 'package:flutter/material.dart';
import 'configuration.dart';
import 'screen2.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;
  bool isdrawer = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isdrawer?40:0),
      ),
      duration: Duration(milliseconds: 250),

      child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  isdrawer?IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
                    setState(() {
                      xoffset = 0;
                      yoffset = 0;
                      scalefactor = 1;
                      isdrawer = false;
                    });
                  },):
                  IconButton(icon: Icon(Icons.menu), onPressed: (){
                    setState(() {
                      xoffset = 230;
                      yoffset = 150;
                      scalefactor = 0.6;
                      isdrawer = true;
                    });

                  },),
                  Column(
                    children: [
                      Text("Location"),
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.location_on,color: primarycolor,)),
                          Text('INDIA'),
                        ],
                      ),

                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/pic.jpg'),
                    maxRadius: 20,
                  )
                ],

              ),
            ),

            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primarycolor),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                    prefixIcon : Icon(Icons.search,color: primarycolor,),
                hintText: "Search PET",
                  filled: true,
                  fillColor: Colors.grey[200],


                ),
              ),
              padding: EdgeInsets.fromLTRB(20,10 ,20, 40),

            ),
            Container(height: 120,
              child: ListView.builder(
                scrollDirection:  Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    child:Column(
                      children:[
                        Container(
                          
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.green[200],
                            boxShadow: ListShadow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Image.asset(categories[index]['iconPath'],height: 50,width: 50,),
                        ),
                        Text(categories[index]['name']),

                      ],
                    ),
                  );
                },
              ),

            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context )=> Screen2()));
              },
              child: Container(

                height:240,
                margin: EdgeInsets.symmetric(horizontal: 20,),
                child:
                Row(
                  children: [
                    
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(20), boxShadow: ListShadow),
                            margin:EdgeInsets.only(top:45),
                          ),

                          Align(
                            child: Hero(
                                tag: 1,
                                child: Image.asset('images/pet-cat2.png')),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('CAT',style: TextStyle(fontWeight: FontWeight.w900),),
                              IconButton(icon: Icon(Icons.mail,color:primarycolor)),
                            ],
                          ),
                          Text('Abisian Cat'),

                          Text('2 years old'),

                          SizedBox(height: 10,),
                          Row(
                            children: [
                              IconButton(icon: Icon(Icons.location_on,color: primarycolor,),),
                              Text('Distance 2.6km'),
                              
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,
                      boxShadow: ListShadow,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),

                      )),
                    ),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              height:240,
              margin: EdgeInsets.symmetric(horizontal: 20,),
              child:
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20), boxShadow: ListShadow),
                          margin:EdgeInsets.only(top:45),
                        ),

                        Align(
                          child: Image.asset('images/pet-cat1.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 60,bottom: 20),
                    decoration: BoxDecoration(color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),

                        )),
                  ),),
                ],
              ),
            ),
            Container(
              height:240,
              margin: EdgeInsets.symmetric(horizontal: 20,),
              child:
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20), boxShadow: ListShadow),
                          margin:EdgeInsets.only(top:45),
                        ),

                        Align(
                          child: Image.asset('images/pet-cat1.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 60,bottom: 20),
                    decoration: BoxDecoration(color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),

                        )),
                  ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
