import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/bottom_appbar.dart';
import 'package:instagram/post_page.dart';
class Homepage extends StatelessWidget {

  List story=[
    {"images": 'assets/images/nirob.jpeg',"username":'Nirob'},
    {"images": 'assets/images/katrina.jpg',"username":'Katrina'},
    {"images": 'assets/images/parineeti.jpeg',"username":'Parineeti'},
    {"images": 'assets/images/Kajal.jpg',"username":'Kajal'},
    {"images": 'assets/images/nirob.jpeg',"username":'Nirob'},
    {"images": 'assets/images/katrina.jpg',"username":'Katrina'},
    {"images": 'assets/images/parineeti.jpeg',"username":'Parineeti'},
    {"images": 'assets/images/Kajal.jpg',"username":'Kajal'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(FontAwesomeIcons.paperPlane,color: Colors.black,),
          SizedBox(width: 10,)
        ],
        backgroundColor: Colors.white,
        title: Text('Instagram',style:
        TextStyle(fontFamily: 'Billabong',
        fontSize: 35,
        color: Colors.black),
        ),
      ),
      bottomNavigationBar: Bottom_AppBar(),
      body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(8, (index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 67,
                          width: 67,
                          //color: Colors.orange,
                          decoration: BoxDecoration(
                              boxShadow:[ BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                              )
                              ],
                              shape: BoxShape.circle,
                              color: Colors.orange,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xD1C90AC6),Color(0xDEFCF80D)],
                              ),
                          ),
                          child: Container(
                            height: 65,
                            width: 65,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              image: DecorationImage(image:
                              AssetImage(story[index]["images"]),
                              ),
                              //color: Colors.orange,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white,width: 2)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(story[index]["username"],style:
                          TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  );
                } )
                ),
              ),
            ),
            Divider(color: Colors.black,height: 20,),
            Expanded(child: post_page(),)
          ],
      ),
    );
  }
}
