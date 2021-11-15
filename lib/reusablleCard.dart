import 'package:flutter/material.dart';
class reusableCard extends StatelessWidget {
  reusableCard({ this.colour ,this.cardChild, this.onPress});
  final Color?  colour;
  final Widget? cardChild;
  late VoidCallback?  onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration:BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
