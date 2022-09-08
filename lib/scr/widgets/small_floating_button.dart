import 'package:flutter/material.dart';
import 'package:food/scr/helpers/commons.dart';

class SmallButton extends StatelessWidget {
  final IconData icon;


  const SmallButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            icon,
            size: 16,
            color: white,
          ),
        ),
      ),
    );
  }
}
