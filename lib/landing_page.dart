import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sda/main_drawer.dart';


class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();

}

class _LandingState extends State<Landing> {
  //final Map alumni;
  //Landing({this.alumni})
  //override
  //initstate{
  // checkLoginStatus();
  // }
  // checkLoginStatus() async{
  //   SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
  //   if(sharedPreferences.getString("user")==null)
  //   {
  //     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle(fontFamily: "Montserrat Regular", fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MainDrawer(),
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
                            //Text(alumni['alumniName'], style: TextStyle(...)),
                            Text('John', style: TextStyle(fontFamily: 'Montserrat Medium', color: Colors.white, fontSize:20),),
                            //Text(alumni['batchNo']),
                            Text('432434'),
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
                            Navigator.pushNamed(context, '/viewprofile');
                            // Navigator.of(context).pushAndRemoveUntil(
                            //             MaterialPageRoute(builder:
                            //                 (BuildContext context) => Profile(alumni: alumni)), (Route<dynamic> route) => false);

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
                            Navigator.pushNamed(context, '/view_events_list');
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
                            Navigator.pushNamed(context, '/view_news_list');
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
                                  'https://www.flaticon.com/svg/vstatic/svg/4108/4108509.svg?token=exp=1611694237~hmac=8af19b2a63802a9447f3a45a52e417ff', height: 128,),
                                Text('News', style: cardTextStyle,)
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/logactivity');
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
                            Navigator.pushNamed(context, '/search');
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