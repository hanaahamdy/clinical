import 'package:flutter/material.dart';
import 'package:youtube/screenn/characterdetails.dart';
import 'package:youtube/screenn/charecterscreen.dart';

import 'constants/constants.dart';
class AppRouter {
  Route? generateRoute(RouteSettings settings){
    //setting name (the name of class want to navigate to
    switch(settings.name){
      case(carachterScreen)://)ظ(الي هي علامه الهوم
        return MaterialPageRoute(builder: (_)=>CharacterScreen());
      case(carachterScreenDetail):
        return MaterialPageRoute(builder: (_)=>CharacterDetailScreen());
    }
  }
}