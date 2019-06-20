import 'package:flutter/material.dart';



class RegisterScreen extends StatelessWidget {

  static const String id = '/register_screen';


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
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
                    Text('Signup With Email',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
                    SizedBox(
                      height: 30.0,
                    ),

                    ///First Name
                    TextField(

                      decoration: InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.lightBlueAccent)),
                        hintText: 'First Name',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0),

                    ///Last name
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.lightBlueAccent)),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0),
                    ///Email Adress
                    TextField(

                      decoration: InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.lightBlueAccent)),
                        hintText: 'Email Address',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0),
                    /// Password
                    TextField(

                      decoration: InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: Colors.lightBlueAccent)),
                        hintText: 'Password',
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    //google
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:  Text('Signup Now',
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,),
                        ),
                        color: Colors.lightGreen,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white70)
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
