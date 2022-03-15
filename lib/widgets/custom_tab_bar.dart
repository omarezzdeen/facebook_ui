import 'package:facebook_ui/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  CustomTabBar({
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
    required this.isBottomIndicator,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator? Border(
          bottom: BorderSide(
            color: Palette.facebookBlue,
            width: 3.0,
          ),
        ) : Border(
          top: BorderSide(
            color: Palette.facebookBlue,
            width: 3.0,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? Palette.facebookBlue
                        : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
    );
  }
}
