import 'package:flutter/material.dart';
import 'package:lottery_hit/themes/media_query_size.dart';
import 'package:lottery_hit/widgets/lottery/lottery_appbar.dart';

class LotteryPage extends StatefulWidget {


  @override
  _LotteryPageState createState() => _LotteryPageState();
}

class _LotteryPageState extends State<LotteryPage> {
  MediaQuerySize mediaQuerySize = MediaQuerySize();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<double>(
        future: mediaQuerySize
            .getMediaQuerySize(mediaQuerySize.shootingMilliseconds(context)),
        builder: (context, snapshot) {
          Size size = MediaQuery.of(context).size;
          if (snapshot.hasData) {
            return LotteryAppBar(size: size);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
