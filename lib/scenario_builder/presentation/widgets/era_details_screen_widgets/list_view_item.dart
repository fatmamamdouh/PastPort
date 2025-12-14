import 'package:flutter/cupertino.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.image, required this.width, required this.height});

  final String image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        image,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
