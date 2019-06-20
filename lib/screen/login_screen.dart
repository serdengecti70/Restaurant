import 'package:flutter/material.dart';
import 'package:food_app/screen/register_screen.dart';
import 'package:food_app/screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "/";

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/2370910.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.low,
        color: Color.fromRGBO(255, 255, 255, 0.8),
          colorBlendMode: BlendMode.modulate
      ),
      Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Text(
                  'Find Goodie',
                  style: TextStyle(fontSize: 45.0, color: Colors.amber),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              //Email
              TextField(

                decoration: InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                  hintText: 'Enter Email',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15.0),

              //Password
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Forget Password?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white70
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ///LOGIN
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login Now',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white70
                    ),),
                  ),
                  color: Colors.lightGreen,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white70)
                  ),
                  onPressed: (){
                    Navigator.popAndPushNamed(context, HomeScreen.id);
                  },
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              //Are you new
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Are You New? Signup',
                      style: TextStyle(
                          fontSize: 30.0,

                      ),),
                  ),
                  color: Colors.white12,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                ),
              ),

              //Facebook
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.airplanemode_active,
                          color: Colors.white70,
                          size: 25.0,),
                        ),
                        SizedBox(
                          width: 35.0,
                        ),
                        Text('Login with Facebook',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white70
                          ),
                        textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                  color: Colors.blueAccent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white70)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                ),
              ),
              //google
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.airplanemode_active,
                            color: Colors.white70,
                            size: 25.0,),
                        ),
                        SizedBox(
                          width: 35.0,
                        ),
                        Text('Login with Google',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white70
                          ),
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                  color: Colors.redAccent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white70)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                ),
              ),
            ],
          ),
        )),
      ),
    ]);
  }
}
