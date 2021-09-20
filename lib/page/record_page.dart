import 'package:flutter/material.dart';
import 'package:lottery_hit/ui/media_query_size.dart';

class RecordPage extends StatefulWidget {


  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  MediaQuerySize mediaQuerySize = MediaQuerySize();

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
          if (snapshot.hasData) {
            return Center(
              child: Container(
                color: Colors.red,
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
