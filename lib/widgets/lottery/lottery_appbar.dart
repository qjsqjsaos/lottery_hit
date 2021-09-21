import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_hit/themes/theme/usase_colors.dart';
import 'package:lottery_hit/widgets/lottery/lottery_btn.dart';
import 'package:lottery_hit/widgets/lottery/lottery_num.dart';

class LotteryAppBar extends StatefulWidget {
  final Size size;

  LotteryAppBar({@required this.size});

  @override
  _LotteryAppBarState createState() => _LotteryAppBarState();
}

class _LotteryAppBarState extends State<LotteryAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(children: [
          Container(
            width: widget.size.width,
            height: 350.h,
            decoration: BoxDecoration(
                color: UsaseColors.mainColor.appBar,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: UsaseColors.mainColor.blurGreen,
                      spreadRadius: 10,
                      blurRadius: 6)
                ]),
            child: Padding(
              padding: EdgeInsets.only(left: 40.w, right: 40.h),
              child: Column(children: [
                Spacer(),
                Container(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: '당첨번호\n\n',
                            style:
                                TextStyle(fontFamily: 'Cafe', fontSize: 20.sp)),
                        TextSpan(
                            text: '981회차 2021.09.18',
                            style:
                                TextStyle(fontFamily: 'Cafe', fontSize: 16.sp))
                      ])),
                ),
                SizedBox(height: 30.h),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LotteryNum(),
                      LotteryNum(),
                      LotteryNum(),
                      LotteryNum(),
                      LotteryNum(),
                      LotteryNum(),
                      Icon(
                        Icons.add,
                        size: 20.w,
                      ),
                      LotteryNum()
                    ]),
                Spacer(),
                Text('오늘의 행운 번호는?',
                    style: TextStyle(fontFamily: 'Cafe', fontSize: 15.sp)),
                SizedBox(height: 80.h),
              ]),
            ),
          ),
          Spacer(),
          LotteryButton(isLuckyBtn: true),
          SizedBox(height: 30.h),
          LotteryButton(isLuckyBtn: false),
          Spacer()
        ]),
        Padding(
          padding: EdgeInsets.only(top: 295.h),
          child: Row(
            children: [
              Spacer(),
              LotteryNum(width: 100.w, height: 100.h),
              Spacer()
            ],
          ),
        )
      ],
    );
  }
}
