import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue
      ),
      child: Row(
        children: const [
          Icon(Icons.navigate_next),
          Icon(Icons.navigate_next),
          Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
