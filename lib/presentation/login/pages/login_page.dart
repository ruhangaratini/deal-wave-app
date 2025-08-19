import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/extensions/get_text_theme_extension.dart';
import '../../../shared/widgets/buttons/base_button.dart';
import '../../../shared/widgets/inputs/base_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login-page-background.jpg'),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            constraints: BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Text('Deal Wave', style: theme.text.titleLarge),
                const SizedBox(height: 10),
                Text('Bem-vindo', style: theme.textTheme.titleMedium),
                const SizedBox(height: 20),
                BaseTextInput(label: 'Email', hint: 'nome@email.com'),
                const SizedBox(height: 10),
                BaseTextInput(label: 'Senha', hint: 'Senha', obscureText: true),
                const SizedBox(height: 50),
                BaseButton(
                  onPressed: () {
                    context.go('/home');
                  },
                  child: Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
