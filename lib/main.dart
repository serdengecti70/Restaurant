import 'package:flutter/material.dart';
import 'package:food_app/screen/login_screen.dart';
import 'package:food_app/screen/register_screen.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:food_app/screen/filter_screen.dart';
import 'package:food_app/screen/restaurant_screen.dart';
import 'package:food_app/screen/profile_screen.dart';


void main() => runApp(MaterialApp(
  title: 'Food App',
  debugShowCheckedModeBanner: false,
  initialRoute: LoginScreen.id,
  routes: {
    LoginScreen.id : (context) => LoginScreen(),
    RegisterScreen.id : (context) => RegisterScreen(),
    HomeScreen.id : (context) => HomeScreen(),
    FilterScreen.id : (context) => FilterScreen(),
    RestaurantScreen.id : (context) => RestaurantScreen(),
    ProfileScreen.id : (context) => ProfileScreen(),
  },
));

