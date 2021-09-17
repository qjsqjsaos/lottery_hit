import 'package:flutter/material.dart';
import 'package:lottery_hit/ui/media_query_size.dart';

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
          if (snapshot.hasData) {
            return Center(
              child: Container(
                color: Colors.green,
                width: 30,
                height: 30,
                child: Text('안녕하세요'),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
