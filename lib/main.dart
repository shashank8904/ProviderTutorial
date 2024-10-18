import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/HomePage.dart';
import 'package:provider_tutorial/list_provider.dart';



void main(){
  runApp(new MyApp());
}


int counter =0;
class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumbersListProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
