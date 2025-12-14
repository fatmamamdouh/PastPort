import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/successful_process_screen_widgets/content_of_successful_process_screen.dart';

class SuccessfulProcessScreen extends StatelessWidget {
  const SuccessfulProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ContentOfSuccessfulProcessScreen(),
      ),
    );
  }
}
