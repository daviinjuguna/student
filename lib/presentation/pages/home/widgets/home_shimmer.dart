import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            enabled: true,
            child: Container(
              height: 200,
              width: double.infinity,
              child: SvgPicture.asset("assets/icons/picture.svg"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[200]!,
                  highlightColor: Colors.grey[100]!,
                  enabled: true,
                  child: Container(
                    width: 50,
                    height: 20,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  enabled: true,
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      enabled: true,
                      child: MaterialButton(
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 90,
                          height: 30,
                          alignment: Alignment.center,
                          // child: Text(
                          //   !applied[index] ? "APPLY" : "APPLIED",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.w800,
                          //     letterSpacing: 1.4,
                          //   ),
                          // ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      enabled: true,
                      child: MaterialButton(
                        elevation: 0,
                        // color:
                        //     !applied[index] ? Colors.grey[300] : kYellowColor,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 90,
                          height: 30,
                          alignment: Alignment.center,
                          // child: Text(
                          //   "VIEW",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.w800,
                          //     letterSpacing: 1.4,
                          //   ),
                          // ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    // IconButton(icon: Icon(Icons.check), onPressed: () {})
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
