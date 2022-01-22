import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonWidget extends StatelessWidget {
  const SkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 71) / 2,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Shimmer.fromColors(
              child: Container(
                margin: const EdgeInsets.all(0),
                width: double.infinity,
                height: 122,
                color: kLineDark,
              ),
              baseColor: kLineDark,
              highlightColor: kGrey,
            ),
            const SizedBox(height: 20),
            Shimmer.fromColors(
              child: Container(
                margin: const EdgeInsets.all(0),
                width: double.infinity,
                height: 22,
                color: kLineDark,
              ),
              baseColor: kLineDark,
              highlightColor: kGrey,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Shimmer.fromColors(
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    width: 62,
                    height: 25,
                    color: kLineDark,
                  ),
                  baseColor: kLineDark,
                  highlightColor: kGrey,
                ),
                Shimmer.fromColors(
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kLineDark,
                    ),
                  ),
                  baseColor: kLineDark,
                  highlightColor: kGrey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
