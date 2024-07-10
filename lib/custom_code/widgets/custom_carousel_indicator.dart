// Automatic FlutterFlow imports
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomCarouselIndicator extends StatefulWidget {
  const CustomCarouselIndicator({
    super.key,
    this.width,
    this.height,
    required this.itemCount,
    required this.currentIndex,
    required this.activeColor,
    required this.inactiveColor,
    this.activeBorderColor = Colors.transparent, // default to transparent
    this.inactiveBorderColor = Colors.transparent,
    this.borderWidth = 2.0, // default border width
  });

  final double? width;
  final double? height;
  final int itemCount;
  final int currentIndex;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final double borderWidth;

  @override
  State<CustomCarouselIndicator> createState() =>
      _CustomCarouselIndicatorState();
}

class _CustomCarouselIndicatorState extends State<CustomCarouselIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.itemCount, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.currentIndex == index
                ? widget.activeColor
                : widget.inactiveColor,
            border: Border.all(
              color: widget.currentIndex == index
                  ? widget.activeBorderColor
                  : widget.inactiveBorderColor,
              width: widget.borderWidth,
            ),
          ),
        );
      }),
    );
  }
}
