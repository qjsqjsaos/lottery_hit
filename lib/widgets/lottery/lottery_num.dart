import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_hit/themes/theme/usase_colors.dart';

class LotteryNum extends StatefulWidget {
  final double width, height;

  LotteryNum({this.width, this.height});

  @override
  _LotteryNumState createState() => _LotteryNumState();
}

class _LotteryNumState extends State<LotteryNum> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 30.w,
      height: widget.height ?? 30.h,
      decoration: BoxDecoration(
          color: widget.width != null
              ? UsaseColors.numCircleColor.bigOne
              : UsaseColors.numCircleColor.smallOne,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: UsaseColors.mainColor.blurGreen,
                spreadRadius: 5,
                blurRadius: 8)
          ]),
    );
  }
}
