import 'package:flutter/material.dart';

class AppbarShadowEraScreen extends StatelessWidget {
  const AppbarShadowEraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Colors.grey, height: 2),
        SizedBox(height: 1),
        Container(color: Colors.grey, height: 2),
      ],
    );
  }
}
