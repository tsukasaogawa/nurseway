import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabItem { home, config }

const Map<TabItem, String> tabName = {
  TabItem.home: 'ホーム',
  TabItem.config: '設定',
};

const Map<TabItem, IconData> tabIcon = {
  TabItem.home: Icons.home,

  TabItem.config: Icons.settings,
};
