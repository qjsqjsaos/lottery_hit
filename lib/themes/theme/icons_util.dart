class IconsUtil{
  IconsUtil._();

  static TabBarIcon tabBarIcon = TabBarIcon._();
  static IconsConvert iconsConvert = IconsConvert._();
}

class TabBarIcon {
  TabBarIcon._();

  String lottery = 'lottery_icon';
  String record = 'record_icon';
  String settings = 'settings_icon';
}

class IconsConvert{
  IconsConvert._();

  String getSVG(String name) {
    return 'assets/' + name + '.svg';
  }
}