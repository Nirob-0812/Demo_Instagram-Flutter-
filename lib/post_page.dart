import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class post_page extends StatelessWidget {
  const post_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
      itemBuilder: (context,index){
          return Column(
            children: [
              ListTile(
                title: Text('norafatehi',style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                trailing: Icon(Icons.more_vert_outlined,color: Colors.black,),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/NoraFatehi.jpg'),
                    )
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                //color: Colors.red,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/NoraFatehi.jpg')
                  )
                ),
              ),
              ListTile(
                leading: Wrap(children: [
                  Icon(Icons.favorite_rounded,color: Colors.red,size:30,),
                  SizedBox(width: 10,),
                  Icon(FontAwesomeIcons.comment,color: Colors.black,),
                  SizedBox(width: 10,),
                  Icon(FontAwesomeIcons.paperPlane,color: Colors.black,),
                  SizedBox(width: 70,),
                  Icon(Icons.more_horiz_outlined),
                ],),
                trailing: Icon(FontAwesomeIcons.bookmark,color: Colors.black,),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('1,102,817 likes'),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('norafatehi',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Text(" I'm trying to just relate what I can see through",
                    style: TextStyle(color: Colors.black) ,)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('my own eyes...',
                        style: TextStyle(color: Colors.black) ),
                  ),
                  Text('...more',
                      style: TextStyle(color: Colors.grey) ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('eisha_megan_action',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text(' Angel',
                      style: TextStyle(color: Colors.black)),
                  Icon(Icons.favorite_rounded,color: Colors.red,)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('View all 7,839 comments',
                        style: TextStyle(color: Colors.grey) ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 18),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/nirob.jpeg')
                      )
                    ),
                  )
                  ),
                  SizedBox(width: 10,),
                  Text('Add a comment...',style:
                  TextStyle( color: Colors.grey),
                  ),
                  SizedBox(width: 100,),
                  Icon(Icons.favorite_rounded,color: Colors.red,size: 20,),
                  SizedBox(width: 15,),
                  Icon(FontAwesomeIcons.handshake,color: Colors.orange,size: 18,),
                  SizedBox(width: 20,),
                  Icon(FontAwesomeIcons.plusSquare,color: Colors.grey,size: 18,)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18,top: 10),
                    child: Text('8 hours ago',
                        style: TextStyle(color: Colors.grey) ),
                  ),
                ],
              ),
            ],
          );
      },
    );
  }
}
