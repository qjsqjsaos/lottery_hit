import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_hit/themes/theme/usase_colors.dart';

class LotteryButton extends StatelessWidget {
  final bool isLuckyBtn;

  LotteryButton({@required this.isLuckyBtn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 60.h,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isLuckyBtn
                ? [
                    UsaseColors.mainColor.luckyBtnBegin,
                    UsaseColors.mainColor.luckyBtnEnd
                  ]
                : [
                    UsaseColors.mainColor.selfBtnBegin,
                    UsaseColors.mainColor.selfBtnEnd
                  ],
          ),
          boxShadow: [
            BoxShadow(
                color: isLuckyBtn
                    ? UsaseColors.mainColor.luckyBtnBlur
                    : UsaseColors.mainColor.selfBtnBlur,
                spreadRadius: 10,
                blurRadius: 5)
          ],
          borderRadius: BorderRadius.all(Radius.circular(50.w))),
      child: Center(
          child: Text(isLuckyBtn ? '행운 번호뽑기' : '번호 저장하기',
              style: TextStyle(fontFamily: 'Cafe', fontSize: 20.sp))),
    );
  }
}
