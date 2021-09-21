import 'package:flutter/material.dart';
import 'package:lottery_hit/themes/media_query_size.dart';

class SettingsPage extends StatefulWidget {


  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                color: Colors.blue,
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