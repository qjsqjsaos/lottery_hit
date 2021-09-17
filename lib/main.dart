import 'package:flutter/material.dart';
import 'package:lottery_hit/page/lottery_page.dart';
import 'package:lottery_hit/ui/media_query_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_hit/ui/theme/icons_util.dart';
import 'package:lottery_hit/ui/theme/usase_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lottery Hit',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  bool isClickedLottery, isClickedRecord, isClickedSettings;

  MediaQuerySize mediaQuerySize = MediaQuerySize();

  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    isClickedLottery = false;
    isClickedRecord = false;
    isClickedSettings = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<double>(
      future: mediaQuerySize.getMediaQuerySize(mediaQuerySize.shootingMilliseconds(context)),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          Size size = MediaQuery.of(context).size;
          return buildDefaultTabController(size);
        }else{
          return Center(child: CircularProgressIndicator());
        }
      }
    );
  }

  DefaultTabController buildDefaultTabController(Size size) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            body: TabBarView(
              children: [
                LotteryPage(),
                Text('2'),
                Text('3')
              ],
            ),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                        color: UsaseColors.mainColor.blurGreen,
                        spreadRadius: 5,
                        blurRadius: 8
                    )]
                ),
                child: Padding(
                    padding: EdgeInsets.only(top: size.height * .02.h, bottom: size.height * .06.h),
                    child: TabBar(
                        controller: tabController,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClickedLottery = true;
                                  isClickedRecord = false;
                                  isClickedSettings = false;
                                });
                              },
                              child: Tab(child: SvgPicture.asset(IconsUtil.iconsConvert.getSVG(IconsUtil.tabBarIcon.lottery),
                                  height: 50.h, color: isClickedLottery ? UsaseColors.iconColor.clicked : UsaseColors.iconColor.unClicked))
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClickedLottery = false;
                                  isClickedRecord = true;
                                  isClickedSettings = false;
                                });
                              },
                              child: Tab(child: SvgPicture.asset(IconsUtil.iconsConvert.getSVG(IconsUtil.tabBarIcon.record),
                                  height: 32.h, color: isClickedRecord ? UsaseColors.iconColor.clicked : UsaseColors.iconColor.unClicked))
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClickedLottery = false;
                                  isClickedRecord = false;
                                  isClickedSettings = true;
                                });
                              },
                              child: Tab(child: SvgPicture.asset(IconsUtil.iconsConvert.getSVG(IconsUtil.tabBarIcon.settings),
                                  height: 30.h, color: isClickedSettings ? UsaseColors.iconColor.clicked : UsaseColors.iconColor.unClicked))
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}
