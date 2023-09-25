
import 'dart:developer';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar(
      {Key? key,
        required this.navItem,
        required this.onTap,
        this.hasFab = false,
        this.showIndicator = true,
        this.selectedIconColor,
        this.unselectedIconColor, this.indicator})
      : super(key: key);
  final List<NavItemModel> navItem;
  final Function(int index) onTap;
  final bool? hasFab;
  final bool? showIndicator;
  final Color? selectedIconColor;
  final Color? unselectedIconColor;
  final Widget? indicator;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var items = List.generate(
        widget.navItem.length,
            (index) => Expanded(
             child: InkWell(
            onTap: () {
              widget.onTap(index);
              _switchTab(index);
              log(index.toString());
            },
            child: NavItem(
              navItem: widget.navItem[index],
              isSelected: index == _selectedIndex,
              showIndicator: widget.showIndicator!,
              selectedIconColor: widget.selectedIconColor ??
               const Color(0xFF150D57),
              unselectedIconColor: widget.selectedIconColor ?? Colors.grey, indicator: widget.indicator?? const NavNotch(),
            ),
          ),
        ));

    if (widget.hasFab! && widget.navItem.length > 3) {
      items.insert(2, const Expanded(child: SizedBox()));
    }

    return BottomAppBar(
      height: 60,
      surfaceTintColor: Theme.of(context).colorScheme.background,
      shadowColor: Theme.of(context).colorScheme.background,
      padding: EdgeInsets.zero,
      elevation: 0,
      child: Row(
        children: items,
      ),
    );
  }

  void _switchTab(int index) {
    _selectedIndex = index;

    setState(() {});
  }
}

class NavItem extends StatefulWidget {
  final NavItemModel navItem;
  final bool isSelected;
  final bool showIndicator;
  final Color selectedIconColor;
  final Color unselectedIconColor;
  final Widget indicator;

  const NavItem({
    Key? key,
    required this.navItem,
    required this.isSelected,
    required this.showIndicator,
    required this.selectedIconColor,
    required this.unselectedIconColor, required this.indicator,
  }) : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 16,
        ),
        Expanded(
          flex: 2,
          child: Theme(
            data: ThemeData(
                iconTheme: IconThemeData(
                    color: widget.isSelected
                        ? widget.selectedIconColor
                        : widget.unselectedIconColor)),
            child: AnimatedCrossFade(
                firstChild: widget.navItem.icon,
                secondChild: widget.navItem.selectedIcon ?? widget.navItem.icon ,
                crossFadeState:
                widget.isSelected && widget.navItem.selectedIcon != null
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300)),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 10,
          child: AnimatedCrossFade(
              secondCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.bounceInOut,
              firstChild: const SizedBox(),
              secondChild: widget.indicator ?? const NavNotch(),
              crossFadeState: widget.showIndicator && widget.isSelected
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300)),
        ),
      ],
    );
  }
}

class NavItemModel {
  final VoidCallback onTap;
  final Widget icon;
  final Widget? selectedIcon;

  NavItemModel({
    required this.onTap,
    required this.icon,
    this.selectedIcon,
  });
}

class NavNotch extends StatelessWidget {
  const NavNotch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 5,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
        color: Color(0xFF150D57),),
    );
  }
}