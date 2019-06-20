import 'package:flutter/material.dart';
import 'restaurant_screen.dart';
import 'profile_screen.dart';
import 'filter_screen.dart';




class HomeScreen extends StatefulWidget {
  static const String id = '/home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200.0)),
              color: Colors.orange,
            ),
          ),
          Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              primary: true,
              actions: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      hintText: 'Search Favourite Foods',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, FilterScreen.id);
                  },
                  icon: Icon(
                    Icons.restaurant_menu,
                    size: 35.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ///Search Bar  andFilter
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Special Offers',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    ///Restaurant List horizontal
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          RestCard(
                            width: 231.0,
                            imgId: 3,
                          ),
                          RestCard(
                            width: 231.0,
                            imgId: 1,
                          ),
                          RestCard(
                            width: 231.0,
                            imgId: 2,
                          ),
                        ],
                      ),
                    ),
                    ///Popular restaurant List vertical
                    Flexible(
                      child: ListView(
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 2.0,),
                              Text(
                                'Popular Restaurants',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                  'View All'
                              ),
                              SizedBox(width: 2.0,),
                            ],
                          ),
                          RestCard(
                            width: 330.0,
                            imgId: 2,
                          ),
                          RestCard(
                            width: 330.0,
                            imgId: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home,
                      size: 50.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      size: 50.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.attach_money,
                      size: 50.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, ProfileScreen.id);
                      },
                      icon: Icon(
                        Icons.person,
                        size: 50.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class RestCard extends StatelessWidget {

  final double width ;
  final int imgId;
  RestCard({this.width, this.imgId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, RestaurantScreen.id);
        },
        child: Card(
          elevation: 7.0,

          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              Image.asset(
                "images/food_$imgId.png",
                fit: BoxFit.fitWidth,
                width: width,
                height: 160.0,
              ),
              Container(
                width: 231.0,
                height: 52.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Text(
                            'Coliseum Cafe',
                            style: TextStyle(
                                color: Colors.black54, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '4.5 &',
                            style: TextStyle(
                                color: Colors.orange, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Indian/Chinese',
                            style: TextStyle(
                                color: Colors.tealAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('##'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







