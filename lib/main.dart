import 'package:flutter/material.dart';
import 'package:riverspods/view/home_page.dart';




void main (){

runApp(Home());


}



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
           fontFamily: 'Raleway',
           colorSchemeSeed: Colors.brown,
        // appBarTheme: AppBarTheme(
        //   color: Colors.amber
        // )
      ),
      home: HomePage(),
    );
  }
}





