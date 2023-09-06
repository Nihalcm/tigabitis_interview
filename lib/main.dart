
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tigabitis_interview/model/cart.dart';
import 'package:tigabitis_interview/screens/homepage.dart';
import 'package:tigabitis_interview/service/service.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<Auth>(create: (context) => Auth()),
          ChangeNotifierProvider(create: (context) => CartAdding(),)
        ],
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Color(0xFFFC153B),
            focusColor: Color(0xFF2B2B2B),
          ),
          home:  HomePage(),
        )
    );
  }
}
