import 'package:flutter/material.dart';


class FilterScreen extends StatefulWidget {
  static const String id = '/filter_screen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/food_2.png'),
          fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(100.0, 100.0, 0.0, 30.0),
          color: Colors.white,
          width: 400.0,
          height: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    Text('Filter to Search',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                      ),
                      textAlign: TextAlign.left,),
                    SizedBox(
                      width: 90.0,
                    ),
                    InkWell(
                      child: Icon(Icons.clear,
                      size: 35.0,),
                      onTap: (){
                            Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _checkListValues.length,
                    itemBuilder: (BuildContext context, int index)
                  {
                    return _checkListValues[index];
                  },
              ),),
              FlatButton(
                child: Text('Apply Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0
                ),),
                color: Colors.green,
                onPressed: ()
                {
                  Navigator.pop(context);
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}

  List<CheckboxListTile> _checkListValues = [
    CheckboxListTile(
      value: false,
      onChanged: (value) {
        value = value;
      },
      title: Text('Indian'),
    ),
    CheckboxListTile(
      value: false,
      onChanged: (value) {},
      title: Text('Indian'),
    ),
    CheckboxListTile(
      value: false,
      onChanged: (value) {},
      title: Text('Japanese'),
    ),
    CheckboxListTile(
      value: false,
      onChanged: (value) {},
      title: Text('Chinese'),
    ),
    CheckboxListTile(
      value: false,
      onChanged: (value) {},
      title: Text('Thai'),
    ),
  ];

