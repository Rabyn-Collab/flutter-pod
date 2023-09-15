import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverspods/constants/app_sizes.dart';



class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizes.gapH30,
                Text(
                  'Today',
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 16.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                    letterSpacing: 0.08,
                  ),
                ),
                SizedBox(height: 32.h,),

                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.w,
                    ),
                    AppSizes.gapW14,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your payment has been successful, congratulations',
                            style: TextStyle(
                              color: Color(0xFF111111),
                              fontSize: 14.sp,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.07,
                            ),
                          ),
                          Text(
                            '1 day Ago',
                            style: TextStyle(
                              color: Color(0xFF78828A),
                              fontSize: 12.sp,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 2,
                              letterSpacing: 0.06,
                            ),
                          ) ,
                        ],
                      ),
                    )
                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 20,
                  ),
                  title:  Text(
                    'Your payment has been successful, congratulations',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 14.sp,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      letterSpacing: 0.07,
                    ),
                  ),
                  subtitle: Text(
                    '1 day Ago',
                    style: TextStyle(
                      color: Color(0xFF78828A),
                      fontSize: 12.sp,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      height: 2,
                      letterSpacing: 0.06,
                    ),
                  ) ,
                ),
                Container(
                  height: 200.h,
                  width: 200.w,
                  color: Colors.red,

                ),

              ],
            ),
          ),
        )
    );
  }
}
