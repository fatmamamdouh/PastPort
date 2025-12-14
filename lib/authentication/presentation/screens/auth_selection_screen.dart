import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/auth_selection_screen_widgets/body_of_auth_selection_screen.dart';

class AuthSelectionScreen extends StatelessWidget {
  const AuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyOfAuthSelectionScreen(),
    );
  }
}
