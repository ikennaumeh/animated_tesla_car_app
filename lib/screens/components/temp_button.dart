import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constanins.dart';

class TempButton extends StatelessWidget {
  const TempButton({
    Key? key,
    required this.svgSource,
    this.isActive = false,
    required this.press,
    required this.title, this.activeColor = primaryColor,
  }) : super(key: key);
  final String svgSource, title;
  final bool isActive;
  final VoidCallback press;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            height: isActive ? 76 : 50,
            width: isActive ? 76 : 50,
            child: SvgPicture.asset(
              svgSource,
              color: isActive ? activeColor : Colors.white38,
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
                fontSize: 16,
                color: isActive ? activeColor : Colors.white38,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            child: Text(
              title.toUpperCase(),

            ),
          ),
        ],
      ),
    );
  }
}