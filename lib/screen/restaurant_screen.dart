import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  static const String id = '/restaurant_screen';
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(255, 255, 255, 0.9),
          height: MediaQuery.of(context).size.height,
        ),
        Image.asset('images/food_2.jpg',
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low,
            //color: Color.fromRGBO(255, 255, 255, 0.8),
            colorBlendMode: BlendMode.modulate),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: <Widget>[
              RestCardText(),
              RestCardGeneral(),
              RestCardList(
                text: 'Menu Offering',
              ),
              RestCardList(
                text: 'Photos',
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RestCardText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0.0, 260.0, 0.0, 0.0),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.white)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Serai @ Jaya Shopping Centre      4.5#',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            Text(
              'Cosy Casual Good for Kids',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                  color: Colors.lightGreen),
              textAlign: TextAlign.center,
            ),
            Text(
              'LG 006 & LG 007, No.98 Millenium Square, Jaya Selangor',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                  color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class RestCardGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Opening Hours',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
              Text(
                'Sunday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
              Text(
                'Monday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
              Text(
                'Tuesday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
              Text(
                'Wednesday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
              Text(
                'Thursday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
              Text(
                'Friday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
              Text(
                'Saturday  10:00 AM To 11:30 PM',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.black54),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestCardList extends StatelessWidget {
  final String text;
  RestCardList({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 300.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '$text',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/food_1.jpg',
                            height: 200.0,
                            width: 160.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/food_3.jpg',
                            height: 200.0,
                            width: 160.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/food_1.jpg',
                            height: 200.0,
                            width: 160.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
