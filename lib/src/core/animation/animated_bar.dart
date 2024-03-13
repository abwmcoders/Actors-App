import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AnimatedSnackBar extends StatefulWidget {
  AnimationController animationController;
  final Widget snackContent;
  final double snackHeight;
  final Color snackColor;

  AnimatedSnackBar({
    super.key,
    required this.snackContent,
    this.snackHeight = 90,
    this.snackColor = Colors.black,
    required this.animationController,
  });

  @override
  State<AnimatedSnackBar> createState() => _AnimatedSnackBarState();
}

class _AnimatedSnackBarState extends State<AnimatedSnackBar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(parent: widget.animationController, curve: Curves.fastOutSlowIn,),
      child: Container(
        height: widget.snackHeight,
        color: widget.snackColor,
        width: widget.snackHeight,
        child: widget.snackContent,
      ),
    );
  }
}
