import 'package:flutter/material.dart';
import 'package:lottery_hit/ui/media_query_size.dart';
import 'package:lottery_hit/ui/theme/usase_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LotteryPage extends StatefulWidget {


  @override
  _LotteryPageState createState() => _LotteryPageState();
}

class _LotteryPageState extends State<LotteryPage> {
  MediaQuerySize mediaQuerySize = MediaQuerySize();

  double lottoNumWidth = 40.w;
  double lottoNumHeight = 40.h;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<double>(
        future: mediaQuerySize
            .getMediaQuerySize(mediaQuerySize.shootingMilliseconds(context)),
        builder: (context, snapshot) {
          Size size = MediaQuery.of(context).size;
          if (snapshot.hasData) {
            return Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: size.width,
                      height: 350.h,
                      decoration: BoxDecoration(
                        color: UsaseColors.mainColor.appBar,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                        boxShadow: [BoxShadow(
                            color: UsaseColors.mainColor.blurGreen,
                            spreadRadius: 10,
                            blurRadius: 6
                        )]
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 40.w, right: 40.h),
                        child: Column(
                          children: [
                            Spacer(),
                            Container(
                              child: Text('당첨번호981회차 당첨번호 2021.09.18'),
                            ),
                            SizedBox(
                              height: 30.h
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                lottoNum(),
                                lottoNum(),
                                lottoNum(),
                                lottoNum(),
                                lottoNum(),
                                lottoNum(),
                                Icon(
                                  Icons.add,
                                  size: 20.w,
                                ),
                                lottoNum()
                              ]
                            ),
                            Spacer(),
                            Text('오늘의 행운 번호는?'),
                            SizedBox(
                                height: 80.h
                            ),
                          ]
                        ),
                      ),
                    )
                  ]
                ),
                Padding(
                  padding: EdgeInsets.only(top: 295.h),
                  child: Row(
                    children: [
                      Spacer(),
                      lottoNum(width: 100.w, height: 100.h),
                      Spacer()
                    ],
                  ),
                )
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  Container lottoNum({double width, double height}) {
    return Container(
      width: width ?? 30.w,
      height: height ?? 30.h,
      decoration: BoxDecoration(
          color: width != null ? UsaseColors.numCircleColor.bigOne : UsaseColors.numCircleColor.smallOne,
          shape: BoxShape.circle,
          boxShadow:  [BoxShadow(
              color: UsaseColors.mainColor.blurGreen,
              spreadRadius: 5,
              blurRadius: 8
          )]
      ),
    );
  }
}
