
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverspods/constants/app_colors.dart';
import 'package:riverspods/constants/app_sizes.dart';





class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height -kToolbarHeight-MediaQuery.of(context).padding.top;
    return Scaffold(

      backgroundColor: AppColors.appWhiteColor,
      appBar: AppBar(
        title: Text('Hi John'),
        actions: [
          Icon(Icons.search),
          AppSizes.gapW4,
          Icon(CupertinoIcons.bell),
          SizedBox(width: 10,),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 270,
                  width: double.infinity,
                  child:  CachedNetworkImage(
                    placeholder: (c,s){
                      return Center(child: CircularProgressIndicator());
                    },
                    errorWidget: (c,s,d){
                      return Center(child: Text('something went wrong'));
                    },
                    imageUrl: 'https://images.unsplash.com/photo-1682686580849-3e7f67df4015?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
                  fit: BoxFit.cover,
                  )),
               AppSizes.gapH10,

              ListView.builder(itemBuilder: itemBuilder),


            ],
          ),
        )
      )

    );
  }
}
