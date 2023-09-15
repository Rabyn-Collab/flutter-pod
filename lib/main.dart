import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:riverspods/view/home_page.dart';
import 'package:riverspods/view/sample_page.dart';
import 'package:riverspods/view/sample_page_1.dart';




void main (){

runApp(Home());


}



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          useMaterial3: true,
             fontFamily: 'Raleway',
             colorSchemeSeed: Colors.brown,
          // appBarTheme: AppBarTheme(
          //   color: Colors.amber
          // )
        ),
        home: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: width > 550 ? 0.9: 1.0),
            child: SamplePage1()),
      ),
    );
  }
}





