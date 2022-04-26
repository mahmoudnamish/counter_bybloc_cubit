import 'package:bloc/bloc.dart';
import 'package:counter_bybloc_cubit/modules/Counter.dart';
import 'package:flutter/material.dart';

import 'constance/bloc_observice.dart';

void main() {
  BlocOverrides.runZoned(
        () {
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Counter() ,
    );
  }
}