import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = '/profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),

        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
       backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
              height: 200.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 75.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("images/boss.png"),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 85.0),
                          child: Icon(
                            Icons.photo_camera,
                            color: Colors.orange,
                            size: 55.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'BOSS',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            //TextFields
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(10.0),
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(

                    title: Text('First Name'),
                    subtitle: TextField(
                      decoration: InputDecoration(),
                    ),
                    dense: true ,
                  ),
                  ListTile(
                    title: Text('Last Name'),
                    subtitle: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                  ListTile(
                    title: Text('PhoneNumber'),
                    subtitle: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                  ListTile(
                    title: Text('Country'),
                    subtitle: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            //APlly button

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: RaisedButton(
          child: Text('Save Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,

          ),),
          color: Colors.green,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
