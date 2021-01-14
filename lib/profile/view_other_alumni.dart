import 'package:flutter/material.dart';

class OtherAlumni extends StatelessWidget {
  final Map alumni;
  OtherAlumni(this.alumni);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title: Text(alumni['name']),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                    'Alumni Info',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                ),

              Expanded(
                flex: 3,
                child: Divider(
                  color: Colors.black,
                  height: 3,
                ),
              ),


              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Name: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(
                  alumni['name'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  'ID: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height:10,
                ),

                Text(
                  alumni['id'].toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Graduation Year: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(
                  alumni['year'].toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    'Batch Info',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),

                Expanded(
                  flex: 4,
                  child: Divider(
                    color: Colors.black,
                    height: 4,
                  ),
                ),


              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Batch No: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(
                  alumni['color'].toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Matric No: ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(
                  alumni['pantone_value'].toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),



    );
  }
}



