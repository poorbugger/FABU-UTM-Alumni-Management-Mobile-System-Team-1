import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sda/events/eventlist.dart';
import 'package:sda/log/view_activity_log.dart';
import 'package:sda/main_drawer.dart';
import 'package:sda/news/newslist.dart';
import 'package:sda/profile/view_all_alumni.dart';
import 'package:sda/profile/view_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'auth/login.dart';


class Landing extends StatefulWidget {
  final Map alumni;
  const Landing({Key key, this.alumni}):super(key: key);

   @override
  _LandingState createState() => _LandingState();

}

class _LandingState extends State<Landing> {
  Map alumni;
  _LandingState({this.alumni});
  checkLoginStatus() async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    if(sharedPreferences.getString("user")==null)
    {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
    }
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle(fontFamily: "Montserrat Regular", fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MainDrawer(alumni: widget.alumni),
      body: Stack(
        children: <Widget>[
          Container(
              height: size.height * .3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/top_header.png')
      ),
      ),
              ),


          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png'),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                              Text(widget.alumni['alumniName'].toString(),style: TextStyle(fontFamily: 'Montserrat Medium', color: Colors.white, fontSize:20)),
                            Text(widget.alumni['graduateYear'].toString()),
                          ],
                        ),
                      ],
                    )
                  ),
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,

                      primary: false,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(alumni: widget.alumni)));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904425.svg', height: 128,),
                                Text('My Profile', style: cardTextStyle,)
                              ],
                            ),
                          ),
                        ),


                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => AllEvents(alumni: widget.alumni)),(Route<dynamic> route) => false);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904565.svg', height: 128,),
                                Text('Events', style: cardTextStyle,)
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => AllNews(alumni: widget.alumni)),(Route<dynamic> route) => false);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/4108/4108509.svg', height: 128,),
                                Text('News', style: cardTextStyle,)
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LogActivityPage(alumni: widget.alumni)),(Route<dynamic> route) => false);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904437.svg', height: 128,),
                                Text('Log Activity', style: cardTextStyle,)
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => AllProfile(alumni: widget.alumni,email: widget.alumni['alumniEmail'].toString(),)),(Route<dynamic> route) => false);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1256/1256650.svg', height: 128,),
                                Text('Connect with others', style: cardTextStyle,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
]         ,
      ),
    );
  }
}