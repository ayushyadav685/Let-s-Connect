import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SenderProfile extends StatefulWidget {
  final String userName;
  final String aboutUser;
  final String imageUrl;
  final String name;
  SenderProfile(
      {@required this.aboutUser,
      @required this.imageUrl,
      @required this.name,
      @required this.userName});
  @override
  _SenderProfileState createState() => _SenderProfileState();
}

class _SenderProfileState extends State<SenderProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.purple,title: Text('User Profile',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontFamily: "Arial Rounded",),),),
      body: Builder(
          builder: (context) => Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 80.0,
                              backgroundImage: NetworkImage(widget.imageUrl),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.purple,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                    child:Text(
                                      "User Name\n${widget.userName}",
                                      textAlign:TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontFamily: "Arial Rounded",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.perm_contact_cal_rounded,
                                  color: Colors.purple,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                    child:Text(
                                      "Name\n${widget.name}",
                                      textAlign:TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontFamily: "Arial Rounded",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(
                                  MdiIcons.alertCircleOutline,
                                  color: Colors.purple,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                    child:Text(
                                      "About\n${widget.aboutUser}",
                                      textAlign:TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontFamily: "Arial Rounded",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0,),
                       
                    ],
                  ),
                ),
              ),
    );
  }
}