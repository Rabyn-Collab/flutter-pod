import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverspods/constants/app_sizes.dart';



class SamplePage1 extends StatelessWidget {
  const SamplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample Page',)),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              _buildRow(label:  'Bondera Premium T-shirt',),
              Divider(
                height: 50,
              ),
              _buildRow(label: 'some data on'),
              Divider(
                height: 50,
              ),
              _buildRow(label: 'asd;lk askjd askjdb asdkj'),
              Divider(
                height: 50,
              ),

            ],
          ),
        )
    );
  }

  Row _buildRow({required String label}) {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100.w,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://images.unsplash.com/photo-1694182122177-c7b8778a4025?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
                 fit: BoxFit.fill,
                ),
              )
            ),
            AppSizes.gapW14,
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 label,
                  style: TextStyle(
                    color: Color(0xFF111111),
                    fontSize: 17.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.08,
                  ),
                ),
                AppSizes.gapH10,
                Text(
                  'Clothes man',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF9CA4AB),
                    fontSize: 13.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.28,
                  ),
                ),
                AppSizes.gapH10,
                Text(
                  '\$138',
                  style: TextStyle(
                    color: Color(0xFF171725),
                    fontSize: 14.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,

                    letterSpacing: -0.28,
                  ),
                )
              ],
            )),
          ],
        );
  }
}
