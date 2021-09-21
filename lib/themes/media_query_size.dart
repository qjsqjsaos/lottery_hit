import 'package:flutter/cupertino.dart';

class MediaQuerySize{
  shootingMilliseconds(BuildContext context) => Stream.periodic(Duration(milliseconds: 100),
            (_) => MediaQuery.of(context).size.width);

  Future<double> getMediaQuerySize(Stream<double> source) async{
    await for(double value in source){
      if (value > 0)
        return value;
    }
  }
}