import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerDemoPage extends StatelessWidget {
  const ShimmerDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16).r,
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                ),
                12.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 14.h,
                        width: double.infinity.w,
                        color: Colors.white,
                      ),
                      8.horizontalSpace,
                      Container(
                        height: 12.h,
                        width: MediaQuery.of(context).size.width * 0.6.w,
                        color: Colors.white,
                      ),
                      8.horizontalSpace,
                      Container(
                        height: 12.h,
                        width: MediaQuery.of(context).size.width * 0.4.w,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
