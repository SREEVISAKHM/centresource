import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  final String name;
  final double width;
  final IconData icons;
  const TabCard({
    required this.name,
    required this.width,
    Key? key,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x1f476494),
              offset: Offset(0, 3),
              blurRadius: 15,
            ),
          ],
        ),
        child: Center(
          child: Row(
            children: [
              Icon(icons),
              SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
