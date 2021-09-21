import 'dart:ui';

class UsaseColors{
  ///투명도
  // 100% - FF
  // 95% - F2
  // 90% - E6
  // 85% - D9
  // 80% - CC
  // 75% - BF
  // 70% - B3
  // 65% - A6
  // 60% - 99
  // 55% - 8C
  // 50% - 80
  // 45% - 73
  // 40% - 66
  // 35% - 59
  // 30% - 4D
  // 25% - 40
  // 20% - 33
  // 15% - 26
  // 10% - 1A
  // 5% - 0D
  // 0% - 00

  UsaseColors._();

  static MainColor mainColor = MainColor._();
  static NumCircleColor numCircleColor = NumCircleColor._();
  static IconColor iconColor = IconColor._();
}

class MainColor {
  MainColor._();

  Color blurGreen = Color(0x3310C600);
  Color luckyBtnBegin = Color(0xA6FF0000);
  Color luckyBtnEnd = Color(0xA6C94646);
  Color luckyBtnBlur = Color(0x40C94646);
  Color selfBtnBegin = Color(0xA60014FF);
  Color selfBtnEnd = Color(0xA64966DB);
  Color selfBtnBlur = Color(0x400014FF);
  Color appBar = Color(0xFF159E5E);
}

class NumCircleColor {
  NumCircleColor._();

  Color bigOne = Color(0xFFFFFFFF);
  Color smallOne = Color(0xFFFFFFFF);
}

class IconColor {
  IconColor._();

  Color unClicked = Color(0xff000000);
  Color clicked = Color(0xff7BCE16);
}